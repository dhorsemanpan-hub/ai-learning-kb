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
- **比喻主题：** 🍳 经营一家米其林餐厅
- **推荐论文：**
  1. *Neural Machine Translation by Jointly Learning to Align and Translate* (Bahdanau, Cho, Bengio, 2015) — ⭐⭐⭐⭐⭐ 注意力机制开山之作
  2. *Attention Is All You Need* (Vaswani et al., 2017) — ⭐⭐⭐⭐⭐ Transformer 奠基论文
  3. *BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding* (Devlin et al., 2019) — ⭐⭐⭐⭐⭐ 双向预训练里程碑
  4. *Improving Language Understanding by Generative Pre-Training (GPT-1)* (Radford et al., 2018) — ⭐⭐⭐⭐⭐ GPT 系列起点
  5. *Exploring the Limits of Transfer Learning with a Unified Text-to-Text Transformer (T5)* (Raffel et al., 2020) — ⭐⭐⭐⭐⭐ 文本到文本统一范式
- **新增概念**：注意力机制, 对齐, 动态上下文向量, 自注意力, QKV, 多头注意力, 位置编码, 缩放点积注意力, 双向预训练, 掩码语言模型(MLM), 预训练-微调范式, 自回归生成, 生成式预训练, Transformer解码器, 迁移学习, 文本到文本, 全局注意力, 局部注意力
- **下次主题：** Day 5 — 预训练范式：Word2Vec → ELMo → BERT，语言模型如何学会"理解"
