# Cascade-DN-DETR 

> [**Cascade-DETR: Delving into High-Quality Universal Object Detection**](https://arxiv.org/abs/2307.11035)           
> Mingqiao Ye, Lei Ke, Siyuan Li, Yu-Wing Tai, Chi-Keung Tang, Martin Danelljan, Fisher Yu \
> ETH Zurich & HKUST 

We organize the folder as follows.
```
cascade_dn_detr
|____data
|____datasets
|____models
|____util
|____work_dir
|____engine.py
|____main.py
```

## 1. Data Preparation
We organize all datasets in the data folder. You can check ```datasets/coco.py``` for corresponding json annotation names.
```
data
|____coco
|____uvo
|____cityscapes
|____brain_tumor
|____document_parts
|____smoke
|____egohands
|____plantdoc
|____bdd100k
|____people_in_paintings
```



## 2. Training
We provide a script ```train.sh``` for training with multi gpus. Note that required packages and deformable attention need to be installed. For small datasets, you can modify ```--epochs``` to 50 and ```--lr_drop``` to 40.
```
bash train.sh [dataset_file] [num_gpus]
```
For example
```
bash train.sh coco 8
```

## 3. Evaluation
We provide a script ```test.sh``` for training with multi gpus.

```
bash test.sh [dataset_file] [num_gpus] [checkpoint_path]
```
For example
```
bash test.sh coco 8 pretrained_checkpoints/coco.pth
```

## 4. Pretrained Checkpoints
We provide pre-trained checkpoints with ResNet50 backbone on UDB10 benchmark. As described in our paper, we use 12-epoch setting for large datasets and 50-epoch setting for small datasets.


<table><tbody>
<!-- START TABLE -->
<!-- TABLE HEADER -->
<th valign="bottom">Dataset</th>
<th valign="bottom">Epochs</th>
<th valign="bottom">AP</th>
<th valign="bottom">Checkpoint</th>
<!-- TABLE BODY -->
<!-- COCO -->
 <tr><td align="left">COCO</td>
 <td align="center">12</td>
<td align="center">45.5</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/coco.pth">Link</td>
</tr>
<!-- UVO -->
<tr><td align="left">UVO</td>
<td align="center">12</td>
<td align="center">28.4</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/uvo.pth">Link</td>
</tr>
<!-- Cityscapes -->
 <tr><td align="left">Cityscapes</td>
<td align="center">50</td>
<td align="center">29.0</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/cityscapes.pth">Link</td>
</tr>
<!-- Brain tumor -->
 <tr><td align="left">Brain tumor</td>
<td align="center">50</td>
<td align="center">46.5</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/brain_tumor.pth">Link</td>
</tr>
<!-- Document Parts -->
 <tr><td align="left">Document Parts</td>
<td align="center">50</td>
<td align="center">50.9</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/document_parts.pth">Link</td>
</tr>
<!-- Smoke -->
 <tr><td align="left">Smoke</td>
<td align="center">50</td>
<td align="center">71.8</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/smoke.pth">Link</td>
</tr>
<!-- Egohands -->
 <tr><td align="left">Egohands</td>
<td align="center">12</td>
<td align="center">77.6</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/egohands.pth">Link</td>
</tr>
<!-- PlantDoc -->
<tr><td align="left">PlantDoc</td>
<td align="center">50</td>
<td align="center">49.1</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/plantdoc.pth">Link</td>
</tr>
<!-- BDD100K -->
 <tr><td align="left">BDD100K</td>
<td align="center">12</td>
<td align="center">30.2</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/bdd100k.pth">Link</td>
</tr>
<!-- People in Painting -->
 <tr><td align="left">People in Painting</td>
<td align="center">50</td>
<td align="center">13.4</td>
<td align="center"><a href="https://huggingface.co/mqye/cascade-detr/resolve/main/pretrained_checkpoints/people_in_paintings.pth">Link</td>
</tr>
</tbody></table>




