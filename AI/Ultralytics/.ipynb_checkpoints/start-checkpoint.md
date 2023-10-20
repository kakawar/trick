### Install Ultralytics

### Install PyTorch

### Ultralytics command line interface

yolo TASK MODE ARGS

Where   TASK (optional) is one of [detect, segment, classify]
        MODE (required) is one of [train, val, predict, export, track]
        ARGS (optional) are any number of custom 'arg=value' pairs like 'imgsz=320' that override defaults.


### python

```
from ultralytics import YOLO

# Create a new YOLO model from scratch
model = YOLO('yolov8n.yaml')

# Load a pretrained YOLO model (recommended for training)
model = YOLO('yolov8n.pt')

# Train the model using the 'coco128.yaml' dataset for 3 epochs
results = model.train(data='coco128.yaml', epochs=3)

# Evaluate the model's performance on the validation set
results = model.val()

# Perform object detection on an image using the model
results = model('https://ultralytics.com/images/bus.jpg')

# Export the model to ONNX format
success = model.export(format='onnx')
```

***Epoch***
使用训练集的全部数据对模型进行一次完整训练，被称之为“一代训练”

***Batch***
使用训练集中的一小部分样本对模型权重进行一次反向传播的参数更新，这一小部分样本被称为“一批数据”

***Iteration***
使用一个 Batch 数据对模型进行一次参数更新的过程，被称之为“一次训练”

### Ultralytics Settings

```
from ultralytics import settings

# View all settings
print(settings)

# Return a specific setting
value = settings['runs_dir']
```

```
yolo settings
```

```
from ultralytics import settings

# Update a setting
settings.update({'runs_dir': '/path/to/runs'})

# Update multiple settings
settings.update({'runs_dir': '/path/to/runs', 'tensorboard': False})

# Reset settings to default values
settings.reset()
```

```
# Update a setting
yolo settings runs_dir='/path/to/runs'

# Update multiple settings
yolo settings runs_dir='/path/to/runs' tensorboard=False

# Reset settings to default values
yolo settings reset
```