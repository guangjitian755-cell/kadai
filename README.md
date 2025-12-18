# inverseコマンド
![test](https://github.com/guangjitian755-cell/inverse-matrix/actions/workflows/test.yml/badge.svg)  
標準入力で読み取った3×3の行列の逆行列を求めるプログラムです.  

## 詳細
逆行列が存在する3×3の行列を入力した場合入力した行列の逆行列を出力します.  
出力は小数点以下3桁で表されます.  
逆行列が存在しない3×3の行列を入力した場合何も出力されません. 
行列の次元が違う，日本語を入力するといった入力不正の場合はpythonのエラーメッセージが表示されます.   


## 使用方法
```bash
$ git clone git@github.com:guangjitian755-cell/inverse-matrix.git
$ cd inverse-matrix
$ chmod +x inverse
```

## 使用例
```bash
$ echo -e "2 1 1\n1 2 1\n0 1 2" | ./inverse
0.600 -0.200 -0.200
-0.400 0.800 -0.200
0.200 -0.400 0.600
```    
## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 22.04 LTS
- Python 3.13.5  

© 2025 Hikaru Yoshida
