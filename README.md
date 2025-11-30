# 3行3列の行列の逆行列
![test](https://github.com/guangjitian755-cell/inverse-matrix/actions/workflows/test.yml/badge.svg)  
標準入力で読み取った行列の逆行列を求めるプログラムです.  
対応しているのは3×3の行列のみなので、2×2や4×4などの行列には対応していないことに注意してください.

## 使用方法
```bash
$ git clone git@github.com:guangjitian755-cell/inverse-matrix.git
$ cd inverse-matrix
$ chmod +x inverse
```

## 使用例
- 逆行列が存在する場合
```bash
2 1 1
1 2 1
0 1 2
```
という行列の逆行列を求める.  
入力  
```bash
$ echo -e "2 1 1\n1 2 1\n0 1 2" | ./inverse
```
入力  
```bash
0.600 -0.200 -0.200
-0.400 0.800 -0.200
0.200 -0.400 0.600
```  
- 逆行列が存在しない場合  
```bash
1 2 3
4 5 6
7 8 9
```  
という逆行列が存在しない行列を渡す.  
入力  
```bash
$ echo -e "1 2 3\n4 5 6\n 7 8 9" | ./inverse
```  
- 出力  
```bash
$ ERROR
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
