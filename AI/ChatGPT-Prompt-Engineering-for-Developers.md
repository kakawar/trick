# 序章

LLM - Large Language Model

base LLMs VS instruction-tuned LLM

Focus on instruction-tuned LLM

RLHF reinforcement learning from human feedback

首先，您将学习一些软件开发提示最佳实践，然后我们将涵盖一些常见用例，包括总结、推断、转换、扩展，然后您将使用 LLM 构建聊天机器人。

因此，当您使用指令调整的LLM时，请考虑向另一个人提供说明，比如说一个聪明但不知道您任务具体细节的人。因此，当LLM无法正常工作时，有时是因为说明不够清晰。例如，如果您说，请给我写一些关于Alan Turing的东西。除此之外，清楚地表明您是否希望文本集中于他的科学工作、个人生活或他在历史上的角色或其他方面也可能有所帮助。如果您指定了文本的语气，它是否应该采取像专业记者写作的语气。或者是一个写给朋友的非正式笔记？这有助于LLM生成您想要的内容。当然，如果您想象自己要求一个新毕业的大学生为您执行此任务，如果您甚至可以指定他们应该预先阅读哪些文本片段来写关于Alan Turing的文本，那么更好地为这位新毕业的大学生设定了成功执行此任务的条件。

->需要怎样跟机器人交流

# 提示语准则

准备：python，gpt key

地址：https://platform.openai.com/account/api-keys

- **Principle 1: Write clear and specific instructions**

1.明确输入的内容

```, """, < >, `<tag> </tag>`, `:`

text1 = f"""
识别中文是一个很难的工作，因为中文中一个字可以表示多种意思，一个词也可以表示不同的意思，不同的标点符号也会使得意思不同。
"""

prompt1 = f"""
把用括号括起来的句子总结成一句话\
({text1})
"""

text = f"""
You should express what you want a model to do by \
providing instructions that are as clear and \
specific as you can possibly make them. \
This will guide the model towards the desired output, \
and reduce the chances of receiving irrelevant \
or incorrect responses. Don't confuse writing a \
clear prompt with writing a short prompt. \
In many cases, longer prompts provide more clarity \
and context for the model, which can lead to \
more detailed and relevant outputs.
"""

prompt = f"""
Summarize the text delimited by triple backticks \
into a single sentence.
```{text}```
"""

2.明确输出的格式

- JSON, HTML

prompt2 = f"""
Generate a list of three made-up book titles along \ 
with their authors and genres. 
Provide them in JSON format with the following keys: 
book_id, title, author, genre.
"""

prompt3 = f"""
生成一个由四个项目组成的学生花名册包含他们的姓名，年龄，爱好，性别\
通过JSON格式来呈现，包含key：name, age, hobby, gender
"""

3.让gpt帮你判断是否输入是否满足你的要求

text5_1 = f"""
从科兴到龙科杰家需要经过总裁俱乐部，然后在南山医院左拐弯，然后在黄星榜家掉头，向前走19米，到麒麟花园
"""

prompt5 = f"""
输入到你的是用三个\"之间的文字 \ 
如果他里面包含了如何从A地到B地的行程 \
用下面的格式来表现他:
目的地1:...
目的地2:...
...
目的地N:... \
如果没有相关行程 \
输出 \"不是一个行程表\"

\"\"\"{text5_1}\"\"\"
"""

4.few-shot learning 小样本学习 FSL 给GPT一个例子，让他来接着做

prompt7 = f"""
你的任务是以某个关键词为题写一个平仄押韵的诗句 \
比方说:\
输入皇帝\
可以输出\
惜秦皇汉武，略输文采，唐宗宋祖，稍逊风骚。一代天骄，成吉思汗，只识弯弓射大雕。\ 

输入美国伟人。
"""

- **Principle 2: Give the model time to “think”**

