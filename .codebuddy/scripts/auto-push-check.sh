#!/bin/bash
# ============================================================
# auto-push-check.sh - 自动化 Git Push 兜底脚本
# ============================================================
# 功能：检查本地仓库是否有未推送的 commit，如果有，自动推送
# 推送失败时重试 3 次，每次间隔 30 秒
# 
# 部署方式（cron）：
#   crontab -e
#   添加（每小时的 15 分和 45 分检查一次）：
#   15 * * * * /Users/panjiaxian/CodeBuddy/automation-20260415173327/.codebuddy/scripts/auto-push-check.sh >/dev/null 2>&1
#   45 * * * * /Users/panjiaxian/CodeBuddy/automation-20260415173327/.codebuddy/scripts/auto-push-check.sh >/dev/null 2>&1
# ============================================================

REPO="/Users/panjiaxian/CodeBuddy/automation-20260415173327"
LOG_DIR="$REPO/.codebuddy/logs"
LOG="$LOG_DIR/auto-push.log"
BRANCH="main"

# 确保日志目录存在
mkdir -p "$LOG_DIR"

# 切到仓库目录
cd "$REPO" || {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERROR: 无法进入仓库目录 $REPO" >> "$LOG"
  exit 1
}

# 防止仓库不是 git 仓库
if ! git rev-parse --git-dir > /dev/null 2>&1; then
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERROR: $REPO 不是一个 git 仓库" >> "$LOG"
  exit 1
fi

# 先 fetch 一下远端（静默），让 LOCAL vs REMOTE 比较更准确
git fetch origin "$BRANCH" >/dev/null 2>&1

LOCAL=$(git rev-parse HEAD 2>/dev/null)
REMOTE=$(git rev-parse "origin/$BRANCH" 2>/dev/null)

# 如果远端分支不存在，直接尝试 push（首次推送场景）
if [ -z "$REMOTE" ]; then
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] 远端分支 origin/$BRANCH 不存在，尝试首次推送..." >> "$LOG"
  NEED_PUSH=1
elif [ "$LOCAL" != "$REMOTE" ]; then
  # 检查本地是否领先远端（有未推送的 commit）
  AHEAD=$(git rev-list --count "origin/$BRANCH".."$BRANCH" 2>/dev/null || echo 0)
  if [ "$AHEAD" -gt 0 ]; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 检测到 $AHEAD 个未推送的 commit，准备推送..." >> "$LOG"
    NEED_PUSH=1
  else
    NEED_PUSH=0
  fi
else
  NEED_PUSH=0
fi

if [ "$NEED_PUSH" != "1" ]; then
  # 无需推送，静默退出（避免日志过于冗长）
  exit 0
fi

# 重试推送最多 3 次
for i in 1 2 3; do
  # 使用 timeout 限制单次推送最大耗时 60 秒
  if timeout 60 git push origin "$BRANCH" >> "$LOG" 2>&1; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ✅ 推送成功（第 ${i} 次尝试）" >> "$LOG"
    exit 0
  fi
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ⚠ 推送失败（第 ${i} 次尝试），等待 30 秒后重试..." >> "$LOG"
  sleep 30
done

echo "[$(date '+%Y-%m-%d %H:%M:%S')] ❌ 推送 3 次均失败，等待下次 cron 周期再试" >> "$LOG"
exit 1
