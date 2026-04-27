# AI 30天学习自动更新 - 执行记录

## 最近一次执行

- **日期**：2026-04-26（周日）
- **执行内容**：Day 10, Day 11, Day 12 三天内容补全并提交推送
- **状态**：✅ 成功完成

## 完成项

1. Day 10（生成式 AI 全景）、Day 11（自然语言理解）、Day 12（自然语言生成）的 Markdown 学习文件已生成
2. `index.html` 数据更新完成：
   - `DAY` 变量更新为 12
   - `DAYS` 数组新增 Day 10/11/12 三条
   - `P` 数组新增 15 篇论文（Day 10: #46-50, Day 11: #51-55, Day 12: #56-60）
   - `C` 数组新增 21 个概念
   - `Q` 数组新增 9 个问答（Q28~Q36）
   - `GN/GL` 数组新增 17 个图谱节点和约 22 条连线
   - 仪表盘统计更新：12/30 天，60 篇论文，122 个概念，33 个问答，进度 40%
   - 阶段标记：阶段一已完成，阶段二为当前阶段
3. 知识库同步更新：
   - `AI知识库/01-核心概念词典.md` 新增 Day 10/11/12 概念
   - `AI知识库/02-知识图谱.md` 新增 Day 10/11/12 节点/连线和更新日志
   - `AI知识库/03-论文索引.md` 新增 15 篇论文
   - `AI知识库/04-每日三问三答汇总.md` 新增 9 个问答（Q28~Q36）
4. `00-学习计划与进度.md` 更新 Day 10/11/12 状态为已完成
5. Git 提交并推送成功

## 当前进度

- **已完成天数**：Day 1 ~ Day 12
- **总论文数**：60 篇
- **总概念数**：122+
- **总问答数**：36
- **进度**：12/30 = 40%
- **阶段**：阶段一已完成，阶段二进行中

## 论文覆盖

- Day 10: #46-50（GAN, DDPM, VAE, LDM/Stable Diffusion, WaveNet）
- Day 11: #51-55（BERT, BiLSTM-CRF, SST/RNTN, NER Survey, SRL Introduction）
- Day 12: #56-60（Seq2Seq, Bahdanau Attention, Pointer-Generator, Transformer, Neural Conversational Model）

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

- 下一天应为 Day 13：计算机视觉基础（2026-04-27）
- Day 13 比喻主题待定（建议围绕"目标检测、图像分割、ViT"）
- 若出现 `push_pending: true` 标记，下次执行开头必须先尝试补推
