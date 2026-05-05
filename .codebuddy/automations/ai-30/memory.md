# AI 30天学习自动更新 - 执行记录

## 最近一次执行

- **日期**：2026-04-27（周一）
- **执行内容**：检测到 Day 13 已存在，跳过生成；修正仪表盘问答计数（36→37）
- **状态**：✅ 跳过（Day 13 已于上次执行中由其他途径生成）

## 完成项

1. Day 13（计算机视觉基础）的 Markdown 文件已存在（`AI论文学习-Day13-20260427.md`）
2. `index.html` 中 Day 13 数据已完整（DAYS/P/C/GN/GL/Q 全部已有）
3. DAY 变量已为 13，仪表盘统计已修正为：13/30天，65篇论文，132概念，37问答，43%进度
4. Git commit 已推送（修正问答计数）

## 当前进度

- **已完成天数**：Day 1 ~ Day 13
- **总论文数**：65 篇
- **总概念数**：132+
- **总问答数**：37
- **进度**：13/30 = 43%
- **阶段**：阶段二进行中（Day 11~20）

## 论文覆盖

- Day 10: #46-50（GAN, DDPM, VAE, LDM/Stable Diffusion, WaveNet）
- Day 11: #51-55（BERT, BiLSTM-CRF, SST/RNTN, NER Survey, SRL Introduction）
- Day 12: #56-60（Seq2Seq, Bahdanau Attention, Pointer-Generator, Transformer, Neural Conversational Model）
- Day 13: #61-65（R-CNN, Faster R-CNN, FCN, ViT, YOLO）

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

- 下一天应为 Day 14：多模态模型（2026-04-28）
- Day 14 主题：CLIP、GPT-4V、视觉-语言融合
- Day 14 比喻主题待定（建议围绕"多感官融合"或"跨语言翻译"）
- 若出现 `push_pending: true` 标记，下次执行开头必须先尝试补推
