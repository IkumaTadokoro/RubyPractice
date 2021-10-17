## 問題

ランダムな英単語 word とアルファベット alphabet を受け取り、もしそのアルファベットが英単語に含まれていたら、そのアルファベットより前の文字をすべて大文字にし、後ろの文字をすべて小文字に変換する
toUpperheadLowerTail を作成してください。

もしアルファベットが複数含まれている場合は、最後に登場したものよりも前の部分をすべて大文字に変換し、それ以降を小文字に変換してください。アルファベットが 1
つも使われていない場合はすべての文字を大文字にしてください。

```ruby
toUpperHeadLowerTail("difficULty","i") --> DIFFiculty
toUpperHeadLowerTail("liBrarY","r") --> LIBRAry
toUpperHeadLowerTail("EcoNomIcs","u") --> ECONOMICS
toUpperHeadLowerTail("AAAAAAAAA","A") --> AAAAAAAAa
toUpperHeadLowerTail("ABABABA","A") --> ABABABa
toUpperHeadLowerTail("ABABABA","B") --> ABABAba
toUpperHeadLowerTail("A","A") --> a
toUpperHeadLowerTail("a","A") --> A
```

## 調べたこと

- wordにおけるalplhabetの最後のインデックスがわかればいい
- Stringの標準APIで使えそうなもの
- [include?\(substr\) \-> bool](https://docs.ruby-lang.org/ja/latest/class/String.html#I_INCLUDE--3F)
  - 文字列が含まれているかはチェックできるけど、インデックスはわからない。
- [index\(pattern, pos = 0\) \-> Integer \| nil](https://docs.ruby-lang.org/ja/latest/class/String.html#I_INDEX)
  - 文字列をpatternで検索し、最初に見つかった部分文字列の左端のインデックスを返す
  - 見つからない場合はnilを返す
  - posが負の場合、文字列の末尾から数えた位置で検索する
  - 左から右に検索するのでだめだなあ。
  - 文字列を`String#reverese`で反転させてから検索すればいいか

```ruby
p "astrochemistry".index("str")         # => 1
p "regexpindex".index(/e.*x/, 2)        # => 3
p "character".index(?c)                 # => 0

p "foobarfoobar".index("bar", 6)        # => 9
p "foobarfoobar".index("bar", -6)       # => 9
```
