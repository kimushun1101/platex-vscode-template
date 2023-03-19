# platex-vscode-template

Visual Studio Code (VS Code) で日本語論文をLaTeX で書くときのテンプレート．
pLaTeX でのビルドを行う．

| ディレクトリ | 含まれるファイルの種類              |
| ----------- | --------------------------------- |
| .vscode     | VS Code 用の設定ファイル           |
| fig　　     | 論文に使用する画像ファイル           |
| out         | LaTeX による生成ファイル(PDF もここ) |

## 環境構築

1. [TeXLive のインストール](https://texwiki.texjp.org/?TeX%20Live#w628bee6)
2. [VS Code のインストール](https://code.visualstudio.com/)
3. VS Code とその拡張機能である[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) のインストール（VS Code から提案されると思います）
4. （必須ではありませんが）追加の拡張機能として，日本語文章校正を行う[テキスト校正くん](https://marketplace.visualstudio.com/items?itemName=ICS.japanese-proofreading) や，スペルチェックを行う[Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) のインストールもオススメします．

## よく使うショートカットキー

| ショートカットキー          |  機能                    |
| ------------------------- | ------------------------ |
| `Ctrl` + `Alt` + `B`  　  | ビルド                    |
| `Ctrl` + `Alt` + `V` 　　 | PDF を表示                |
| `Ctrl` + `Alt` + `C` 　　 | 中間ファイルの削除         |
| `Ctrl` + `Alt` + `M`  　　| 数式プレビュの表示         |
| `Ctrl` + `Alt` + `J` 　　 | PDF の該当の場所にジャンプ |
| PDF を `Ctrl` + `クリック` | .tex の該当の行にジャンプ |
| `Ctrl` + `Shift` + `M`    | エラーやワーニングの確認  |
| `Ctrl` + `Shift` + `U`    | ログファイルの確認       |

.tex ファイルの保存時にも自動ビルドが実行される設定としている．

## 動作確認
1. `$ git clone git@github.com:kimushun1101/platex-vscode-template.git`  
  もしくは  
  GitHub ページの`Code<>▼` から`Download ZIP`して展開する．
2. VS Code で`File`→`Open Folder` でこのフォルダを開く．
3. `sample.tex` を開いた状態で，`Ctrl` + `Alt` + `B`
4. ビルドの完了後に`Ctrl` + `Alt` + `V`

## 使い方
[動作確認](#動作確認)したディレクトリでそのまま作業（3番）を進めても良いですが，以下の手順で，ご自身のGitHub にリポジトリを作成してバージョン管理することをオススメのします．
1. [GitHub](https://github.com/) アカウントの作成．[Git](https://git-scm.com/) をインストールして使い方を習得（とりあえずclone, add, commit, push ができればよい）．
2. `Use this template▼` から`Create a new repository`を行う．Private リポジトリとすることをオススメします．
2. `Code<>▼` から作成したリポジトリのパスをコピーして`$ git clone 作成したリポジトリのパス`
3. 論文を提出する学会などが配布しているTeX ファイルやそのスタイルファイルをこのディレクトリにコピーアンドペーストして，[動作確認](#動作確認)と同様の方法でビルドしてください．

## BibTex
- `reference.bib` は[Zotero](https://www.zotero.org/) や[Mendeley](https://www.mendeley.com/) などの文書管理ツールのエクスポート機能などで作成するか，[Google Scholar](https://scholar.google.co.jp/) より調べて`引用`→`BibTeX`などからコピーアンドペーストして加筆していくとよい．
- bst ファイルが提供されていない場合には，`out/sample.bbl` を`sample.tex` にコピーアンドペーストして，提出先が要求するフォーマットに手動で修正してください．

## 参考
- [LaTeX Workshop を使いこなす](https://qiita.com/Yarakashi_Kikohshi/items/a9357dd469320ffb65a0)

## ライセンス
The MIT License
