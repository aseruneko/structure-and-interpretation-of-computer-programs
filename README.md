# structure-and-interpretation-of-computer-programs
The repository of practice for structure-and-interpretation-of-computer-programs (a.k.a. 計算機プログラムの構造と解釈)

## 概要

- これは、日本語第2版『計算機プログラムの構造と解釈』に記載されている練習問題への回答を個人的に保存しておくためのリポジトリです。
- ここらへん( https://aseruneko.github.io/notes/engineering/index.html )と連動しています

## 用意した環境

【2018年3月】SICPを始めるためのScheme処理系準備メモ( https://qiita.com/toku345/items/cb376033ccaf1e55c980 )とかを参考にしました。

自分の環境はmacOS BigSurなので、

```
$ brew install --cask racket
$ raco pkg install sicp
```
を行いました。

また、.zprofileに以下を追記し、aliasを貼りました。
```
alias lisprepl='racket -I sicp'
```

しかし、折角やるからには記録を残しておきたいので、できる限りREPLではなくrktファイルを作成して学習するつもりです。

エディタはVScodeを使用しています。

extensionのsjhuangx.vscode-schemeを使用しています。