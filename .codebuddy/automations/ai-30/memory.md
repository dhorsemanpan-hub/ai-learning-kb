# AI 30天学习自动更新 - 执行记录

## 最近一次执行

- **日期**：2026-05-05（周二）
- **执行内容**：生成 Day 15（语音技术）Markdown 文件，确认 index.html 数据已完整（P/C/Q/GN/GL 全部已有），更新仪表盘统计，git push 成功
- **状态**：✅ 完成

## 完成项

1. Day 15（语音与音频 AI：ASR、TTS、音频生成）Markdown 文件已生成（`AI论文学习-Day15-20260505.md`）
2. `index.html` 中 Day 15 数据完整（DAY=15，DAYS/P/C/GN/GL/Q 全部已有）
3. 仪表盘统计：15/30天，75篇论文，163概念，43问答，50%进度
4. 知识库文件（`AI知识库/`）已含 Day 15 内容
5. Git commit 已推送成功

## 当前进度

- **已完成天数**：Day 1 ~ Day 15
- **总论文数**：75 篇
- **总概念数**：163+
- **总问答数**：43
- **进度**：15/30 = 50%
- **阶段**：阶段二进行中（Day 11~20）

## 论文覆盖

- Day 10: #46-50（GAN, DDPM, VAE, LDM/Stable Diffusion, WaveNet）
- Day 11: #51-55（BERT, BiLSTM-CRF, SST/RNTN, NER Survey, SRL Introduction）
- Day 12: #56-60（Seq2Seq, Bahdanau Attention, Pointer-Generator, Transformer, Neural Conversational Model）
- Day 13: #61-65（R-CNN, Faster R-CNN, FCN, ViT, YOLO）
- Day 14: #66-70（CLIP, LLaVA, GPT-4V, Flamingo, SAM）
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

- 下一天应为 Day 16：强化学习基础（MDP/Policy/Value Function）
- Day 16 主题：强化学习 — MDP, 策略梯度, Q-learning
- Day 16 比喻主题待定（建议围绕"训练一只导盲犬"或"培养一位游戏高手"）
- 若出现 `push_pending: true` 标记，下次执行开头必须先尝试补推
