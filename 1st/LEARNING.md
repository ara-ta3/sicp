学んだこと

終了方法
`(exit)`

コメント
`;`

* 作用
  * p5,p7
  * 最左部分式の値である手続き（演算子）を、残りの部分式の値である引数（非演算子）に作用させる

### vimrcなどの準備

* http://pastak.hatenablog.com/entry/2013/10/30/235525
* http://qiita.com/da1/items/02f7d2f157c7145d58f2
* http://d.hatena.ne.jp/lemniscus/20120409/1333942456

### 合成手続き

```
(define (<name> <formal parameters>) <body>)
```

* if

```
(if <predicate> <consequent> <alternative>)
(and <e1> <e2> ...)
(or <e1> <e2> ...)
(not <e1>)
```

### 特殊形式

if や condなど  
独自の評価順序を持っている  
