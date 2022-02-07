# enigma package

## インストール

```
cd ~/enigma-Google-Colab

pip install ./enigma
```

## サンプルコード

```
from enigma import Enigma

eni = Enigma({"b":'a',' ':' ' ,'e':'z'}, alpha=5, beta=17, gama=24)
print(eni.encrypt_text("i wanna dream"))
print("----------------------------------------------------------")
eni = Enigma({"b":'a',' ':' ' ,'e':'z'}, alpha=5, beta=17, gama=24)
print(eni.encrypt_text("x nbdgb vkzbv"))
```
