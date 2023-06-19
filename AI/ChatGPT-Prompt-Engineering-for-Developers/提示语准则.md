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
#### Tactic 1: Specify the steps required to complete a task
1.给出具体的步骤
2.指定需要的输出格式

text9 = f"""
啊！我今天终于要去江苏灵山看大佛了！这是妈妈为了考验我的意志，让我在两个小时内徒步走了5。5公里才争取到了的机会，在出发前，我还因此兴奋地一个晚上没睡觉呢！今天，终于可以去玩了！
经过了三个多小时的车程，终于到了妈妈预定的宾馆。我们吃了午饭就开车去灵山了。十几分钟后车便到了灵山脚下。买票后，我们随着人群开始往景区走，大概走了500米后，我终于看到了期待以久的梵宫和灵山大佛。
我们首先去参观了梵宫。一进大门，首先印入我眼帘的是一个巨大的殿堂。殿堂的四个角分别放着四只白玉雕刻成的白象和四幅以净&middot;善&middot;慈&middot;孝为主题的东阳木雕画。殿堂的四面墙上挂着八幅描写佛教传说的油画。
殿堂的正前方有着一幅350平方米的琉璃巨画，画中镶嵌着猫眼石&middot;玛瑙&middot;珊瑚&middot;翡翠等珍宝。上面描写的是众生膜拜释迦牟尼佛的场景。其中，释迦牟尼佛的身体就是由纯金打造的，异常奢侈。顺着楼梯往上走，我们就会进入一个大厅，这个大厅比殿堂小一点，叫&ldquo;圣坛&rdquo;。
圣坛的顶上是由149007块1平方米的巨型汉白玉莲花瓣拼接而成的，它的灯光五彩斑斓，一层层叠加上去非常美丽，那种震撼同样是无法描写的。走过圣坛，就是走廊了，走廊里有着用翡翠打造的十二生肖像，十分生动。梵宫真是太奢侈了！单单打造梵宫就用了8亿元呀！怪不得被称为&ldquo;中国卢浮宫&rdquo;呢！
经过梵宫，我们就到了灵山大佛的脚下。大佛高88米，重710吨，相当于七百多头大象叠成30层楼的高度和重量，我难以想像，当初的工人是如何把这个大佛给竖立起来的？他脚下的莲花也有3楼那么高。大佛右手指天左手指地，脸上表情是那种慈善的微笑，眼睛睁开一条缝，你不管走到哪儿，他的眼神似乎总跟着你。
顶礼膜拜了大佛之后，我们又去了正对面的广场，发现有许多的鸽子，我就买了个玉米喂它们，惹得那些鸽子争先恐后的扑向我，把我手都啄疼了。我正喂着，突然广场上响起了一阵广播：&ldquo;各位游客，请注意，我们的&ldquo;九龙灌浴&rdquo;圣礼马上开始，请大家准备好水杯，尽情畅饮&rdquo;。
于是，我们就拿出杯子，跟着人群聚集到广场中心看演出、接圣水。
伴随着一阵阵音乐响起，一个约有六层楼高的莲花柱顶上的一朵莲花缓缓展开，花开见佛，只见在莲花中，一个幼年时期的释加牟尼出现在莲花中心，也象大佛一样，一个手指天一个手指地，与此同时，以他为中心，围绕在他身边的九条龙开始向他喷水沐浴，在水幕中，一条彩虹若隐若现，十分美丽神圣。
这一天，虽然有点累，但是我了解了佛教的很多知识，知道佛教是一种智慧的宗教，更看到了这种宗教有着丰厚的文化底蕴，俗话说：行万里路，读万卷书，以后我还要爸爸妈妈带我出去多参观、多学习。
"""

prompt_9 = f"""
你的任务是做以下几件事:
1.将用<>括起来的文字总结成一句话
2.将这个总结翻译成需要的语言
3.列出所有总结中的景点
4.用html的形式输出结果，包含key:翻译，景点

现在你需要翻译成的语言是日语

用这样的格式来处理
文字：<需要总结的文字>
总结：<总结>
翻译：<翻译过的的总结>
景点：<翻译过的景点>
HTML：<HTML格式的结果>

文字:<{text9}>
"""
#### Tactic 2: Instruct the model to work out its own solution before rushing to a conclusion
在做判断的时候，先让他自己做出来再去判断

prompt12 = """
你现在需要来判断这个问题我解答得对不对
你需要先自己找到答案再来比较我的答案是不是正确
你不能在自己算完之前就来评判我的答案是不是正确

我们用以下格式来处理
问题:
```
问题在这里
```

回答:
```
我的回答
```
答案:
```
你的解决步骤以及答案
```
判决：
```
比较你的答案和我的回答，
我的回答如果是正确的，牛逼，如果不是，傻逼
```

问题:
```
40个梨分给3个班，分给一班20个，其余平均分给二班和三班，二班分到多少个
```

回答:
```
1.40个梨平分给3个班，每个班分13.3333个
2.一班分了20个，多分了20-13.3333 = 6.6667个
3.二班跟三班在原来的基础上再共同分摊一班多分的 13.3333 - 6.6667 / 2 = 10个
4.二班分到了10个梨
```
答案：
"""

## Model Limitations: Hallucinations

模型的缺陷：他会产生一些看上去合理，实际上是错误的一些回答。

最好给他喂食文字，然后让他引用其中的内容去回答

prompt13 = f"""
告诉我格力的A3000智能空调有哪些功能
"""