# 会话机器人

### 会话，角色的概念

#### 会话

角色 + 内容

##### 角色

system：前提

assistent：chatGPT

user：你

##### 例子

{'role':'system', 'content':'You are friendly chatbot.'},
{'role':'user', 'content':'Hi, my name is Isa'},
{'role':'assistant', 'content': "Hi Isa! It's nice to meet you. \
Is there anything I can help you with today?"},
{'role':'user', 'content':'Yes, you can remind me, What is my name?'}

##### 经验

可以把一些知识前置到对话中