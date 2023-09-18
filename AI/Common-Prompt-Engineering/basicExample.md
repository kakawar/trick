### 文本概括
快速概括出易于理解的文章大意和相关概念。
上下文

> Explain antibiotics  
A:

> Antibiotics are a type of medication used to treat bacterial infections. They work by either killing the bacteria or preventing them from reproducing, allowing the body’s immune system to fight off the infection. Antibiotics are usually taken orally in the form of pills, capsules, or liquid solutions, or sometimes administered intravenously. They are not effective against viral infections, and using them inappropriately can lead to antibiotic resistance.
Explain the above in one sentence:
### 信息提取
具体想要的

>Author-contribution statements and acknowledgements in research papers should state clearly and specifically whether, and to what extent, the authors used AI technologies such as ChatGPT in the preparation of their manuscript and analysis. They should also indicate which LLMs were used. This will alert editors and reviewers to scrutinize manuscripts more carefully for potential biases, inaccuracies and improper source crediting. Likewise, scientific journals should be transparent about their use of LLMs, for example when selecting submitted manuscripts.
Mention the large language model based product mentioned in the paragraph above:
### 问答
规定想要的格式

>Answer the question based on the context below. Keep the answer short and concise. Respond "Unsure about answer" if not sure about the answer.
Context: Teplizumab traces its roots to a New Jersey drug company called Ortho Pharmaceutical. There, scientists generated an early version of the antibody, dubbed OKT3. Originally sourced from mice, the molecule was able to bind to the surface of T cells and limit their cell-killing potential. In 1986, it was approved to help prevent organ rejection after kidney transplants, making it the first therapeutic antibody allowed for human use.
Question: What was OKT3 originally sourced from?
Answer:

### 文本分类
通过例子规定想要的结果

>Classify the text into neutral, negative or positive. 
Text: I think the vacation is okay.
Sentiment: neutral 
Text: I think the food was okay. 
Sentiment:

### 对话
可以指定ChatGPT的角色和知识范围

>The following is a conversation with an AI research assistant. The assistant answers should be easy to understand even by primary school students.
Human: Hello, who are you?
AI: Greeting! I am an AI research assistant. How can I help you today?
Human: Can you tell me about the creation of black holes?
AI: 
### 代码生成
可以生产代码

>/*
Ask the user for their name and say "Hello"
*/

>"""
Table departments, columns = [DepartmentId, DepartmentName]
Table students, columns = [DepartmentId, StudentId, StudentName]
Create a MySQL query for all students in the Computer Science Department
"""
### 推理
执行推理任务可能会有一些难度，需要静心地去构造prompt。下面的例子就是告诉AI应该分几步去完成。

ps:这里好像一些问题，gpt已经知道要按步骤去解答了。但是不可否认的是这是一个有效的方式让ai能更准确地回答问题。

>The odd numbers in this group add up to an even number: 15, 32, 5, 13, 82, 7, 1. 
A:

>The odd numbers in this group add up to an even number: 15, 32, 5, 13, 82, 7, 1. 
Solve by breaking the problem into steps. First, identify the odd numbers, add them, and indicate whether the result is odd or even. 