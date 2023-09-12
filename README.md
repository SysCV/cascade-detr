# Cascade-DETR [ICCV'23]

Official code of "Cascade-DETR: Delving into High-Quality Universal Object Detection".

More results comparison are in the [paper](https://arxiv.org/abs/2307.11035).

![teaser_fig_cascade-detr](https://github.com/SysCV/cascade-detr/assets/17427852/a160d3b1-c5f6-4672-83e2-30ecc0e0d440)


## Introduction
We introduce Cascade-DETR for high-quality universal object detection. We jointly tackle the generalization to diverse domains and localization accuracy by proposing the
Cascade Attention layer, which explicitly integrates objectcentric information into the detection decoder by limiting the attention to the previous box prediction. To further
enhance accuracy, we also revisit the scoring of queries. Instead of relying on classification scores, we predict the expected IoU of the query, leading to substantially more
well-calibrated confidences. Lastly, we introduce a universal object detection benchmark, UDB10, that contains 10 datasets from diverse domains. While also advancing the state-of-the-art on COCO, Cascade-DETR substantially improves DETR-based detectors on all datasets in UDB10, even by over 10 mAP in some cases. The improvements under stringent quality requirements are even more pronounced.

## Installation

We use ```python=3.8,pytorch=1.7.1,cuda=11.0```. Other versions may also be available.

Please follow the instructions to install both PyTorch and TorchVision dependencies. Installing both PyTorch and TorchVision with CUDA support is needed.

Clone the repository locally and install with

```
git clone https://github.com/SysCV/cascade-detr.git
cd cascade-detr
```


### Example conda environment setup
```
# 1. Create environment
conda create --name cascade_detr python=3.8 -y
conda activate cascade_detr

# 2. Install pytorch https://pytorch.org/get-started/previous-versions/
pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

# 3. Other needed packages
pip install -r requirements.txt

# 4. deformable attention
cd cascade_dn_detr/models/cascade_dn_detr/ops
sh make.sh
# unit test (should see all checking is True)
python test.py
cd ../../..
```


## Data Download 
UDB10 Benchmark includes 10 datasets in a varity of domains. All datasets can be downloaded from public links. In our paper, we provide separate training result on each dataset.

We provide link for each dataset here. Expected dataset structure for training and evaluation can be found in [cascade_dn_detr](cascade_dn_detr/README.md).

### 1. COCO
Standard [COCO 2017](https://cocodataset.org/#home) train/val split.
### 2. UVO
[UVO v0.5](https://sites.google.com/view/unidentified-video-object/dataset) dataset and its default [train/val split](https://drive.google.com/drive/folders/1dz2aSAy50tT95I3oWYjVsiJhDwdEE40s).
### 3. Cityscapes
Cityscapes can be downloaded from its [official website](https://www.cityscapes-dataset.com/). The detection set annotation in COCO format can be downloaded from [DE-DETR](https://drive.google.com/drive/folders/1mRrJT-CjVwNbQ6iRt4VdZguXrH9iJx9i)
### 4. Brain tumor
Brain tumor Dataset can be downloaded from [Roboflow link](https://universe.roboflow.com/roboflow-100/brain-tumor-m2pbp/dataset/2). We recommend using the COCO JSON download format.

### 5. Document Parts
Document Parts Dataset can be downloaded from [Roboflow link](https://universe.roboflow.com/roboflow-100/document-parts/dataset/2). We recommend using the COCO JSON download format.

### 6. Smoke
Smoke Dataset can be downloaded from [Roboflow link](https://universe.roboflow.com/roboflow-100/smoke-uvylj/dataset/2). We recommend using the COCO JSON download format.

### 7. Egohands
Egohands Dataset can be downloaded from [Roboflow link](https://universe.roboflow.com/brad-dwyer/egohands-public/dataset/9). We recommend using the COCO JSON download format.

### 8. PlantDoc
PlantDoc Dataset can be downloaded from [Roboflow link](https://universe.roboflow.com/joseph-nelson/plantdoc/dataset/4). We recommend using the COCO JSON download format.

### 9. BDD100K
BDD can be downloaded from its [official website](https://www.vis.xyz/bdd100k/). You can follow the instructions to convert annotation files to COCO format. We also provide the [pre-converted  coco format jsons](https://hkustconnect-my.sharepoint.com/:u:/g/personal/lkeab_connect_ust_hk/EWhaLPcWjQtKv9-X1dWsKwgBXdQWwP7uCpRQGUPH9uklLw?e=tlY1yz) for downloading if you want to skip the transformation process to COCO-style.


### 10. People in Painting
People in Painting Dataset can be downloaded from [Roboflow link](https://universe.roboflow.com/roboflow-100/people-in-paintings/dataset/2). We recommend using the COCO JSON download format.


## Getting Started
You can change the current folder path to [cascade_dn_detr](cascade_dn_detr/README.md) and we provide detailed training, evaluation scripts and pretrained checkpoints.
```
cd cascade_dn_detr
```


Citation
---------------
If you find Cascade-DETR useful in your research or refer to the provided baseline results, please star :star: this repository and consider citing :pencil::

```
@inproceedings{ye2023cascade,
  title={Cascade-DETR: Delving into High-Quality Universal Object Detection},
  author={Ye, Mingqiao and Ke, Lei and Li, Siyuan and Tai, Yu-Wing and Tang, Chi-Keung and Danelljan, Martin and Yu, Fisher},
  booktitle = {ICCV},
  year={2023}
}
```
