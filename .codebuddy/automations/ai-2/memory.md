# AI 论文学习计划 - 自动化任务执行记录

## 计划概览

- **总周期**：30 天（3 阶段 × 10 天）
- **每日论文**：5 篇
- **论文来源标准**：优先顶会（NeurIPS/ICML/ICLR/ACL/CVPR）、顶刊（Nature/Science/JMLR/IEEE TPAMI）、经典奠基论文、知名机构技术报告
- **比喻规则**：每天选择一个统一的比喻主题，当天所有概念的比喻保持在同一框架下
- **知识库路径**：`AI知识库/` 目录下维护概念词典、知识图谱（Mermaid）、论文索引、三问三答汇总

## 三阶段路线

- **阶段一（Day 1-10）：认知构建** — 明白大模型是什么、有哪些部分、各技术背后的核心意涵
- **阶段二（Day 11-20）：领域深潜** — 各细分领域在研究什么、想解决什么问题、怎么解决的
- **阶段三（Day 21-30）：前沿追踪** — 前沿正在发生什么、有哪些新知识需要学习

## 每日推送内容模板

1. 今日主题 + 在整体计划中的位置
2. 统一比喻主题（当天所有概念用同一比喻框架）
3. 5 篇论文推荐，**每篇论文必须包含以下深度内容**：
   - 标题/作者/来源/权威性/链接
   - **内容简介**（1-2句概括性描述，用于卡片预览）
   - **📜 摘要翻译**（Abstract 的忠实中文翻译，150-300字）
   - **💡 核心观点**（深入浅出的解读，200-300字，用通俗语言解释论文在说什么）
   - **🏆 关键贡献**（2-4条结构化的学术贡献，每条50-80字）
   - **🌟 为什么重要**（历史地位与影响，100-150字）
   - **核心概念卡片**（每个概念含定义+比喻）
4. 三问三答（基于论文内容深入浅出解答）
5. 知识图谱增量
6. 学习路径建议

### index.html P 数组数据结构

每篇论文在 `P[]` 数组中必须包含以下字段：
- `id, day, t, a, s, y, r, u` — 基础元信息
- `d` — 简短概括（1-2句，用于卡片预览）
- `abs` — Abstract 中文翻译（按原文长度完整翻译，不删减）
- `insights` — 核心观点深度解读（800-1000字，通俗易懂，用比喻辅助）
- `contribs` — 关键贡献数组（2-4条字符串）
- `why` — 为什么重要（100-150字）
- `c` — 核心概念卡片数组（每项含 n/d/m）
- `rt, rr` — 建议阅读时长和理由

## 每日执行后需同步更新的知识库文件

- `AI知识库/01-核心概念词典.md` — 新增概念条目
- `AI知识库/02-知识图谱.md` — 追加 Mermaid 节点和连线
- `AI知识库/03-论文索引.md` — 追加论文记录（含作者）
- `AI知识库/04-每日三问三答汇总.md` — 追加当日问答

## 执行历史

### Day 1 — 2026-04-15
- **主题：** AI 全局观：什么是 AI、ML、DL，它们的关系与边界
- **比喻主题：** 🏗 建造摩天大楼
- **推荐论文：**
  1. *Computing Machinery and Intelligence* (Turing, 1950) — ⭐⭐⭐⭐⭐ AI 创世论文
  2. *A Few Useful Things to Know About Machine Learning* (Domingos, 2012) — ⭐⭐⭐⭐⭐ ML 入门必读
  3. *Deep Learning* (LeCun, Bengio, Hinton, 2015) — ⭐⭐⭐⭐⭐ 深度学习三巨头 Nature 综述
  4. *Attention Is All You Need* (Vaswani et al., 2017) — ⭐⭐⭐⭐⭐ Transformer 奠基论文
  5. *A Survey of Large Language Models* (Zhao et al., 2023) — ⭐⭐⭐⭐ LLM 百科全书式综述
- **新增概念**：AI, ML, DL, 神经网络, CNN, RNN, Transformer, 自注意力, LLM, 预训练, 微调, Prompt, 反向传播, 过拟合, 泛化, 图灵测试, 并行计算
- **下次主题：** Day 2 — 神经网络基础：感知机、激活函数、前向传播、反向传播

### Day 2 — 2026-04-16
- **主题：** 神经网络基础：感知机、激活函数、前向传播、反向传播
- **比喻主题：** 🏭 运营一座智能工厂
- **推荐论文：**
  1. *The Perceptron* (Rosenblatt, 1958) — ⭐⭐⭐⭐⭐ 神经网络开山之作
  2. *Approximation by Superpositions of a Sigmoidal Function* (Cybenko, 1989) — ⭐⭐⭐⭐⭐ 万能近似定理
  3. *Learning Representations by Back-Propagating Errors* (Rumelhart, Hinton, Williams, 1986) — ⭐⭐⭐⭐⭐ 反向传播算法
  4. *Understanding the Difficulty of Training Deep Feedforward Neural Networks* (Glorot, Bengio, 2010) — ⭐⭐⭐⭐⭐ 梯度消失/爆炸分析
  5. *Rectified Linear Units Improve Restricted Boltzmann Machines* (Nair, Hinton, 2010) — ⭐⭐⭐⭐⭐ ReLU 激活函数
- **新增概念**：感知机, 权重, 激活函数, Sigmoid, ReLU, 前向传播, 梯度, 损失函数, 梯度消失, 梯度爆炸, 权重初始化, 稀疏激活, 隐藏层, 万能近似定理
- **下次主题：** Day 3 — 深度网络演进：CNN、RNN、LSTM 的诞生与动机

### Day 3 — 2026-04-17
- **主题：** 深度网络演进：CNN、RNN、LSTM 的诞生与动机
- **比喻主题：** 🎬 拍摄一部电影
- **推荐论文：**
  1. *Gradient-Based Learning Applied to Document Recognition* (LeCun et al., 1998) — ⭐⭐⭐⭐⭐ CNN 奠基论文 (LeNet-5)
  2. *Finding Structure in Time* (Elman, 1990) — ⭐⭐⭐⭐⭐ 简单 RNN (Elman Network)
  3. *Long Short-Term Memory* (Hochreiter & Schmidhuber, 1997) — ⭐⭐⭐⭐⭐ LSTM 奠基论文
  4. *ImageNet Classification with Deep Convolutional Neural Networks* (Krizhevsky, Sutskever, Hinton, 2012) — ⭐⭐⭐⭐⭐ AlexNet，引爆深度学习革命
  5. *Deep Residual Learning for Image Recognition* (He et al., 2016) — ⭐⭐⭐⭐⭐ ResNet，残差连接
- **新增概念**：卷积层, 权重共享, 池化层, 循环连接, 上下文单元, 序列建模, LSTM, 记忆细胞, 门控机制, Dropout, 数据增强, GPU训练, 残差学习, 跳跃连接, 退化问题
- **下次主题：** Day 4 — 注意力机制与 Transformer：大模型的核心引擎

### Day 4 — 2026-04-18
- **主题：** 注意力机制与 Transformer：大模型的核心引擎
- **比喻主题：** 🎵 指挥一场交响乐团演出
- **推荐论文：**
  1. *Neural Machine Translation by Jointly Learning to Align and Translate* (Bahdanau, Cho, Bengio, 2015) — ⭐⭐⭐⭐⭐ 注意力机制奠基论文
  2. *Attention Is All You Need* (Vaswani et al., 2017) — ⭐⭐⭐⭐⭐ Transformer 奠基论文
  3. *BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding* (Devlin et al., 2019) — ⭐⭐⭐⭐⭐ 双向预训练
  4. *Improving Language Understanding by Generative Pre-Training* (Radford et al., 2018) — ⭐⭐⭐⭐⭐ GPT-1，自回归路线起点
  5. *Exploring the Limits of Transfer Learning with a Unified Text-to-Text Transformer* (Raffel et al., 2020) — ⭐⭐⭐⭐⭐ T5，文本到文本统一框架
- **新增概念**：注意力机制, 对齐, 自注意力, QKV, 多头注意力, 位置编码, 双向预训练, 遮盖语言模型(MLM), 自回归生成, 生成式预训练, 迁移学习, 文本到文本, 任务前缀, C4数据集
- **下次主题：** Day 5 — 预训练范式：Word2Vec → ELMo → BERT，语言模型如何学会"理解"

### Day 4 — 2026-04-18
- **主题：** 注意力机制与 Transformer：大模型的核心引擎
- **比喻主题：** 🍳 经营一家米其林餐厅
- **推荐论文：**
  1. *Neural Machine Translation by Jointly Learning to Align and Translate* (Bahdanau, Cho, Bengio, 2015) — ⭐⭐⭐⭐⭐ 注意力机制开山之作
  2. *Attention Is All You Need* (Vaswani et al., 2017) — ⭐⭐⭐⭐⭐ Transformer 奠基论文
  3. *BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding* (Devlin et al., 2019) — ⭐⭐⭐⭐⭐ 双向预训练里程碑
  4. *Improving Language Understanding by Generative Pre-Training (GPT-1)* (Radford et al., 2018) — ⭐⭐⭐⭐⭐ GPT 系列起点
  5. *Exploring the Limits of Transfer Learning with a Unified Text-to-Text Transformer (T5)* (Raffel et al., 2020) — ⭐⭐⭐⭐⭐ 文本到文本统一范式
- **新增概念**：注意力机制, 对齐, 动态上下文向量, 自注意力, QKV, 多头注意力, 位置编码, 缩放点积注意力, 双向预训练, 掩码语言模型(MLM), 预训练-微调范式, 自回归生成, 生成式预训练, Transformer解码器, 迁移学习, 文本到文本, 全局注意力, 局部注意力
- **下次主题：** Day 5 — 预训练范式：Word2Vec → ELMo → BERT，语言模型如何学会"理解"

### Day 5 — 2026-04-19
- **主题：** 预训练范式：Word2Vec → ELMo → BERT，语言模型如何学会"理解"
- **比喻主题：** 🎭 培养一位全能翻译官
- **推荐论文：**
  1. *Efficient Estimation of Word Representations in Vector Space (Word2Vec)* (Mikolov et al., 2013) — ⭐⭐⭐⭐⭐ 词向量开山之作
  2. *Distributed Representations of Words and Phrases (Word2Vec 续)* (Mikolov et al., 2013) — ⭐⭐⭐⭐⭐ 负采样+短语向量
  3. *Deep Contextualized Word Representations (ELMo)* (Peters et al., 2018) — ⭐⭐⭐⭐⭐ 上下文动态词向量
  4. *BERT: Pre-training of Deep Bidirectional Transformers* (Devlin et al., 2019) — ⭐⭐⭐⭐⭐ 预训练-微调范式
  5. *GloVe: Global Vectors for Word Representation* (Pennington et al., 2014) — ⭐⭐⭐⭐⭐ 全局统计词向量
- **新增概念**：词嵌入, 分布式假设, 词向量空间, CBOW, Skip-gram, 负采样, 短语向量, 上下文化表示, 双向LSTM特征, ELMo, 预训练-微调范式, 下一句预测(NSP), 共现矩阵, 全局统计
- **下次主题：** Day 6 — GPT 系列演进：从 GPT-1 到 GPT-4，自回归生成的崛起

### Day 6 — 2026-04-20
- **主题：** GPT 系列演进：从 GPT-1 到 GPT-4，自回归生成的崛起
- **比喻主题：** 🚀 建造一艘星际飞船
- **推荐论文：**
  1. *Language Models are Unsupervised Multitask Learners (GPT-2)* (Radford et al., 2019) — ⭐⭐⭐⭐⭐ 零样本多任务
  2. *Language Models are Few-Shot Learners (GPT-3)* (Brown et al., 2020) — ⭐⭐⭐⭐⭐ 少样本学习里程碑
  3. *Training Language Models to Follow Instructions with Human Feedback (InstructGPT)* (Ouyang et al., 2022) — ⭐⭐⭐⭐⭐ RLHF 对齐，ChatGPT 前身
  4. *GPT-4 Technical Report* (OpenAI, 2023) — ⭐⭐⭐⭐⭐ 多模态旗舰，专业考试人类水平
  5. *Scaling Laws for Neural Language Models* (Kaplan et al., 2020) — ⭐⭐⭐⭐⭐ 规模定律，大模型时代的"第一原理"
- **新增概念**：零样本学习, 少样本学习, 上下文学习, 涌现能力, RLHF, 奖励模型, 对齐, 多模态, 幻觉, 规模定律, 计算最优, 样本效率, WebText
- **下次主题：** Day 7 — 大语言模型全貌：参数、训练数据、Tokenizer、上下文窗口

### Day 5 — 2026-04-19
- **主题：** 预训练范式：Word2Vec → ELMo → BERT，语言模型如何学会"理解"
- **比喻主题：** 🌱 培育一棵参天大树
- **推荐论文：**
  1. *Efficient Estimation of Word Representations in Vector Space* (Mikolov et al., 2013) — ⭐⭐⭐⭐⭐ Word2Vec
  2. *Deep Contextualized Word Representations (ELMo)* (Peters et al., 2018) — ⭐⭐⭐⭐⭐ 上下文动态词表示
  3. *BERT: Pre-training of Deep Bidirectional Transformers* (Devlin et al., 2019) — ⭐⭐⭐⭐⭐ 预训练+微调范式确立
  4. *Distributed Representations of Words and Phrases* (Mikolov et al., 2013) — ⭐⭐⭐⭐⭐ 负采样+短语向量
  5. *GloVe: Global Vectors for Word Representation* (Pennington et al., 2014) — ⭐⭐⭐⭐⭐ 全局统计词向量
- **新增概念**：词嵌入, 分布式假说, Skip-gram, 上下文化表示, 双向语言模型, 层次化特征, 预训练-微调范式, 下一句预测(NSP), 负采样, 短语向量, 共现矩阵, 全局统计
- **下次主题：** Day 6 — GPT 系列演进：从 GPT-1 到 GPT-4，自回归生成的崛起

### Day 5 — 2026-04-19
- **主题：** 预训练范式：Word2Vec → ELMo → BERT，语言模型如何学会"理解"
- **比喻主题：** 🎭 培养一位全能翻译官
- **推荐论文：**
  1. *Efficient Estimation of Word Representations in Vector Space (Word2Vec)* (Mikolov et al., 2013) — ⭐⭐⭐⭐⭐ 词嵌入开山之作
  2. *Deep Contextualized Word Representations (ELMo)* (Peters et al., 2018) — ⭐⭐⭐⭐⭐ 上下文化表示先驱
  3. *BERT: Pre-training of Deep Bidirectional Transformers* (Devlin et al., 2019) — ⭐⭐⭐⭐⭐ 预训练-微调范式标杆
  4. *Distributed Representations of Words and Phrases* (Mikolov et al., 2013) — ⭐⭐⭐⭐⭐ 负采样与短语向量
  5. *GloVe: Global Vectors for Word Representation* (Pennington et al., 2014) — ⭐⭐⭐⭐⭐ 全局词向量模型
- **新增概念**：词嵌入, 分布式假说, Skip-gram, 上下文化表示, 双向语言模型, 层次化特征, 预训练-微调范式, 下一句预测(NSP), 负采样, 短语向量, 共现矩阵, 概率比率, 全局统计
- **下次主题：** Day 6 — GPT 系列演进：从 GPT-1 到 GPT-4，自回归生成的崛起

### Day 7 — 2026-04-21
- **主题：** 大语言模型全貌：参数、训练数据、Tokenizer、上下文窗口
- **比喻主题：** 🏰 建造一座巨型图书馆
- **推荐论文：**
  1. *LLaMA: Open and Efficient Foundation Language Models* (Touvron et al., 2023) — ⭐⭐⭐⭐⭐ 开源大模型里程碑
  2. *Training Compute-Optimal Large Language Models (Chinchilla)* (Hoffmann et al., 2022) — ⭐⭐⭐⭐⭐ Scaling Law 2.0
  3. *SentencePiece* (Kudo & Richardson, 2018) — ⭐⭐⭐⭐⭐ 现代 Tokenizer 标准实现
  4. *Extending Context Window via Positional Interpolation* (Chen et al., 2023) — ⭐⭐⭐⭐ 长上下文关键技术
  5. *Neural Machine Translation of Rare Words with Subword Units (BPE)* (Sennrich et al., 2016) — ⭐⭐⭐⭐⭐ BPE 原始论文
- **新增概念**：参数量, 训练 Token 数, Chinchilla Law, 欠训练, Tokenizer, BPE, 子词, 词汇表, OOV, Token, 上下文窗口, RoPE, 位置插值, SentencePiece, LLaMA
- **下次主题：** Day 8 — 指令微调与人类对齐：SFT、RLHF、DPO

### Day 8 — 2026-04-22
- **主题：** 指令微调与人类对齐：SFT、RLHF、DPO
- **比喻主题：** 🎓 培养一名实习医生
- **推荐论文：**
  1. *Training Language Models to Follow Instructions with Human Feedback (InstructGPT)* (Ouyang et al., 2022) — ⭐⭐⭐⭐⭐ RLHF 里程碑
  2. *Direct Preference Optimization (DPO)* (Rafailov et al., 2023) — ⭐⭐⭐⭐⭐ RLHF 的优雅简化
  3. *Self-Instruct* (Wang et al., 2023) — ⭐⭐⭐⭐⭐ 自动指令生成
  4. *Constitutional AI (CAI)* (Bai et al., 2022) — ⭐⭐⭐⭐⭐ Anthropic AI 安全对齐
  5. *LIMA: Less Is More for Alignment* (Zhou et al., 2023) — ⭐⭐⭐⭐⭐ 表面对齐假说
- **新增概念**：SFT, DPO, PPO, 偏好数据, Constitutional AI, RLAIF, 批评-修订, 表面对齐假说, 指令微调, 对齐税, 自我指令, LIMA
- **下次主题：** Day 9 — 提示工程与上下文学习：Prompt、Few-shot、Chain-of-Thought

---

## Git Push 重试策略（重要 · 从 Day 9 起执行）

**⚠ 每次自动化执行完成后，git push 必须遵循以下重试策略：**

1. **强制重试**：`git push origin main` 失败时，必须至少重试 3 次，每次间隔 15 秒。
2. **超时保护**：使用 `timeout 60 git push origin main` 限制单次推送最大耗时 60 秒，避免无限挂起。
3. **网络预检**：push 前先用 `git ls-remote origin HEAD` 探测连通性；若失败，先等待 30 秒再尝试。
4. **失败记录**：若 3 次重试后仍失败，必须在本文件追加 `push_pending: true` 标记和失败时间戳，并在下次执行时**首先补推**所有未推送的 commit。
5. **本地备份**：即使 push 失败，commit 必须已成功创建，绝不能丢失内容。
6. **兜底机制**：本地已部署 cron 脚本 `.codebuddy/scripts/auto-push-check.sh`（每小时运行一次），会自动检测并补推未推送的 commit。自动化任务的 push 步骤是"尽力而为"，即使失败 cron 也会兜底。

**push 重试伪代码：**
```bash
for i in 1 2 3; do
  if timeout 60 git push origin main; then
    echo "push success on attempt $i"
    break
  fi
  echo "push failed attempt $i, retrying in 15s..."
  sleep 15
done
```

**⚠ 下次执行第一步检查**：查看本文件末尾是否存在 `push_pending: true` 标记。若存在，必须先执行 `git push origin main` 补推未推送的 commit，成功后才能删除该标记并继续当天的新任务。
