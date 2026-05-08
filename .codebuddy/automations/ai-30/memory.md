# AI 30天学习自动更新 - 执行记录

## 最近一次执行

- **日期**：2026-05-05（周二）
- **执行内容**：确认 Day 15 已完整存在（index.html 和 Markdown 文件均已在之前运行中生成），补充 Day 14 知识库缺失内容（概念词典、知识图谱、论文索引），修正问答编号，更新进度文件
- **状态**：✅ 完成（Day 15 数据验证通过 + Day 14 知识库补齐 + Git push 成功）

## 完成项

1. `AI论文学习-Day15-20260505.md` 已生成（CTC, Tacotron 2, wav2vec 2.0, Whisper, VALL-E）
2. `index.html` Day 15 数据完整（DAYS/P/C/Q/GN/GL 均已在 commit 84ab1b5 中完成）
3. DAY=15，仪表盘：15/30天，75篇论文，163概念，43问答，50%进度
4. 知识库 Day 14 补齐：概念词典、知识图谱增量、论文索引
5. 知识库 Day 15 已存在：概念词典、知识图谱、论文索引、三问三答
6. Git commit + push 成功

## 当前进度

- **已完成天数**：Day 1 ~ Day 15
- **总论文数**：75 篇
- **总概念数**：163+
- **总问答数**：43（编号至Q45，含Day 14的Q40-Q42补充）
- **进度**：15/30 = 50%
- **阶段**：阶段二进行中（Day 11~20）— 刚过半程

## 论文覆盖

- Day 13: #61-65（R-CNN, Faster R-CNN, FCN, ViT, YOLO）
- Day 14: #66-70（CLIP, Flamingo, LLaVA, GPT-4V/GPT-4 Technical Report, SAM）
- Day 15: #71-75（Deep Speech 2, LAS, Whisper, Tacotron 2, VALL-E）

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

- 下一天应为 Day 16：强化学习（RL）
- Day 16 主题：从 Q-Learning 到 PPO，AI 如何学会决策
- Day 16 比喻主题建议：围绕"训练宠物/教练运动员"
- index.html 中 Day 15 使用的论文是 Deep Speech 2/LAS/Whisper/Tacotron 2/VALL-E（与 Markdown 文件中的 CTC/Tacotron 2/wav2vec 2.0/Whisper/VALL-E 略有不同，两边各自完整有效）
