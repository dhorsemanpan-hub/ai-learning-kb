# AI 30天学习自动更新 - 执行记录

## 最近一次执行

- **日期**：2026-05-19（周一）
- **执行内容**：生成 Day 18（AI Agent 智能体）完整内容
- **状态**：✅ 全部完成（Markdown + index.html + 知识库 + Git push）

## 完成项

1. `AI论文学习-Day18-20260519.md` 已生成（ReAct、Toolformer、Voyager、Generative Agents、LLM Agent Survey）
2. `index.html` DAY=18，DAYS/P/C/Q/GN/GL 均完整
3. 仪表盘：18/30天，90篇论文，概念187，问答49，约60%进度
4. 知识库 Day 18 已追加：概念词典（11个新概念）、论文索引（5篇）、三问三答
5. Git commit `1aa6593` 已推送成功

## 当前进度

- **已完成天数**：Day 1 ~ Day 18
- **总论文数**：90 篇
- **总概念数**：187
- **进度**：18/30 = 60%
- **阶段**：阶段二进行中（Day 11~20）

## 论文覆盖

- Day 16: #76-80（DQN, Policy Gradient, PPO, AlphaGo, AlphaGo Zero）
- Day 17: #81-85（RAG, DPR, RAG Survey, Self-RAG, Lost in the Middle）
- Day 18: #86-90（ReAct, Toolformer, Voyager, Generative Agents, LLM Agent Survey）

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

- 下一天应为 Day 19：RAG（检索增强生成）— 注意：Day 17 已经是 RAG，Day 19 按照大纲应该是 RAG，但 Day 17 已完成 RAG 主题。根据原始大纲 Day 19 = RAG，Day 17 已提前覆盖 RAG，Day 19 应直接跳到其对应主题。
- 重新确认大纲：Day18-Agent ✓, Day19-RAG(已由Day17覆盖), Day20-蒸馏
- 由于 Day 17 已覆盖 RAG，下一天（Day 19）应为蒸馏（Knowledge Distillation）
- 比喻主题建议：围绕"名师带徒弟/传承"
- index.html 中 Day 18 主题为 Agent（AI 智能体）
