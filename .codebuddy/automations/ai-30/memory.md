# AI 30天学习自动更新 - 执行记录

## 最近一次执行

- **日期**：2026-04-22（周三）
- **执行内容**：Day 7 & Day 8 补全并提交推送
- **状态**：✅ 成功完成

## 完成项

1. Day 7（大语言模型全貌）和 Day 8（指令微调与人类对齐）的 Markdown 学习文件已生成
2. `index.html` 数据更新完成：
   - `DAY` 变量更新为 8
   - `DAYS` 数组新增 Day 7/8 两条
   - `P` 数组新增 10 篇论文（Day 7: #31-35, Day 8: #36-40）
   - `C` 数组新增 20 个概念
   - `Q` 数组新增 6 个问答
   - `GN/GL` 数组新增 13 个图谱节点和约 20 条连线
   - 仪表盘统计更新：8/30 天，40 篇论文，101 个概念，24 个问答，进度 27%
3. 知识库同步更新：
   - `AI知识库/01-核心概念词典.md` 新增 Day 7/8 概念
   - `AI知识库/02-知识图谱.md` 新增 Day 7/8 节点/连线和更新日志
   - `AI知识库/03-论文索引.md` 新增 10 篇论文
   - `AI知识库/04-每日三问三答汇总.md` 新增 6 个问答（Q19~Q24）
4. `00-学习计划与进度.md` 更新 Day 7/8 状态为已完成
5. Git 提交并推送成功

## 当前进度

- **已完成天数**：Day 1 ~ Day 8
- **总论文数**：40 篇
- **总概念数**：101+
- **总问答数**：24
- **进度**：8/30 = 27%

## 论文覆盖

- Day 7: #31-35（LLaMA, Chinchilla, SentencePiece, Position Interpolation, BPE）
- Day 8: #36-40（InstructGPT, DPO, Self-Instruct, Constitutional AI, LIMA）

## Git Push 重试策略（重要）

**⚠ 每次自动化执行完成后，执行 git push 必须遵循以下重试策略：**

1. **强制重试**：`git push origin main` 失败时，必须至少重试 3 次，每次间隔 15 秒。
2. **网络预检**：push 前先用 `git ls-remote origin HEAD` 探测连通性；若失败，先等待 30 秒再尝试。
3. **失败记录**：若 3 次重试后仍失败，必须在 memory.md 中写入 `push_pending: true` 标记和失败时间戳，并在下次执行时**首先补推**所有未推送的 commit。
4. **本地备份**：即使 push 失败，commit 必须已成功创建，绝不能丢失内容。
5. **兜底机制**：本地已部署 cron 脚本 `.codebuddy/scripts/auto-push-check.sh`（每小时 15/45 分运行一次），会自动检测并补推未推送的 commit。自动化任务的 push 步骤是"尽力而为"，即使失败 cron 也会兜底。

**push 重试伪代码（macOS 无 `timeout` 命令，直接调用 git push）：**
```bash
for i in 1 2 3; do
  if git push origin main; then
    echo "push success on attempt $i"
    break
  fi
  echo "push failed attempt $i, retrying in 15s..."
  sleep 15
done
```

## 注意事项

- 下一天应为 Day 9：提示工程与上下文学习（2026-04-23）
- Day 9 比喻主题待定（建议围绕"Prompt / Few-shot / CoT"）
- 若出现 `push_pending: true` 标记，下次执行开头必须先尝试补推
