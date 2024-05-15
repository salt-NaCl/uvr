# Ultimate Vocal Remover

[[Colab]](https://colab.research.google.com/drive/1VDncdndceKanFrs2LU-LM4Odv8tnPkzD?usp=sharing)

⚠️ Before running this project, make sure you have installed `torch`, `torchaudio`. Please check out the PyTorch documentation.

⚠️ Also make sure you have `libsndfile` and `ffmpeg` installed.

⚠️ This project currently works on CUDA.

## Install dependencies

```shell
pip install -r requirements.txt
```

## Download Model Weights

```shell
./download.sh
```

## Separation

```shell
python separate.py
```

```python 
if __name__ == '__main__':
    device = 'cuda'
    is_half=True
    model_path='uvr5_weights/2_HP-UVR.pth'
    pre_fun = _audio_pre_(model_path=model_path,device=device,is_half=True)
    audio_path = 'audio.aac'
    save_path = 'opt'
    pre_fun._path_audio_(audio_path , save_path,save_path)
```
