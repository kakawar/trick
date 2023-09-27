### Start

### 概念
![LangChain星星数](LangChainStar.png "LangChain火爆度")

***LangChain已经成为当前LLM应用框架的事实标准***

LangChain是一个基于大语言模型的应用开发框架，它主要通过两种方式规范和简化了使用LLM的方式:

***集成：集成外部数据(如文件、其他应用、API数据等)到LLM中***

***Agent：允许LLM通过决策与特定的环境交互，并由LLM协助决定下一步的操作***

LangChain的优点包括:

高度抽象的组件：规范和简化与语言模型交互所需的各种抽象和组件

高度可自定义的Chains：提供了大量预置Chains的同时，支持自行继承BaseChain并实现相关逻辑以及各个阶段的callback handler等

活跃的社区与生态：Langchain团队迭代速度非常快，能快速使用最新的语言模型特性，该团队也有langsmith, auto-evaluator等其它优秀项目，并且开源社区也有相当多的支持

### 架构
![LangChain架构](LangChainStruct.png "LangChain架构")


##### Model I/O
![Model I/O架构](Model_IO.png "[Model I/O架构")

Model I/O 指的是和LLM直接进行交互的过程

三个组件：

***Language models***

*****LLM*****、*****Chat Mode*****、*****Embedding*****

LLM text to text

chat mode chat to chat 

System - 告诉AI要做什么的背景信息上下文

Human - 标识用户传入的消息类型

AI - 标识AI返回的消息类型

Embedding 向量化？用处后续看下

***Prompts***

指用户的一系列指令和输入，是决定Language Model输出内容的唯一输入。

*****Prompt Template***** *****Example selectors*****

Prompt Template

LangChain提供了大量方法来创建Prompt Template，有了这一层组件就可以在不同Language Model和不同Chain下大量复用Prompt Template了

Example selectors

在很多场景下，单纯的instruction + input的prompt不足以让LLM完成高质量的推理回答，这时候我们就还需要为prompt补充一些针对具体问题的示例，LangChain将这一功能抽象为了Example selectors这一组件

***Output parsers***

Language Model的输出是固定的格式，以支持我们解析其输出为结构化数据，LangChain将这一诉求所需的功能抽象成了Output Parser这一组件，并提供了一系列的预定义Output Parser

常用parser：Structured output parser, List parser，Auto-fixing parser和Retry parser

Output Parser需要和Prompt Template, Chain组合使用：

Prompt Template: 在Prompt Template中通过指定partial_variables为Output Parser的format，即可在prompt中补充让模型输出所需格式内容的指令

Chain: 在Chain中指定Output Parser，并使用Chain的predict_and_parse / apply_and_parse方法启动Chain，即可直接输出解析后的数据

=============================================

###### Data connection
![Data connection架构](Data_Connection.png "[Data connectio架构")

集成外部数据到Language Model中是LangChain提供的核心能力之一，也是市面上很多优秀的大语言模型应用成功的核心之一

*****Document loaders***** *****Document transformers***** *****Vector stores***** *****Retrievers*****

Document loaders

Document transformers

Vector stores

Retrievers






