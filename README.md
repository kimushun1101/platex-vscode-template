# platex-vscode-template

Visual Studio Code (VS Code) で日本語論文をLaTeX で書くときのテンプレート．
pLaTeX でのビルドを行う．

| ディレクトリ | 含まれるファイルの種類          　　　　    |
| ------------- | ----------------------------------- |
| .devcontainer | Dev Container (Docker) の設定ファイル |
| .vscode       | VS Code 用の設定ファイル           　　|
| fig　　        | 論文に使用する画像ファイル           　　|
| out           | LaTeX による生成ファイル(PDF もここ) 　　|

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

## 環境構築

前提として[VS Code](https://code.visualstudio.com/) をインストールしてください．
LaTeX の環境はTeXLive を使用しますが，以下の3つの方法から選択できます．

### ネイティブインストール
Windows の場合にはコンパイル速度が遅いので他の方法をオススメする．
[TeXLive をインストール](https://texwiki.texjp.org/?TeX%20Live#w628bee6)

### Docker
現在のPC にLaTeX の環境構築をしたくない場合にオススメ．
Windows の場合にはネイティブよりもコンパイル速度が速い．
[Docker をインストール](https://docs.docker.com/engine/install/)して起動
### WSL (Windows Subsystem for Linux)
Windows でもっともコンパイル速度を出すならばこれ．
ただし，対象のファイルもWSL 上に置くこと．
1. [WSL をインストール](https://learn.microsoft.com/ja-jp/windows/wsl/install)．  
  要約するとPowerShell を管理者権限で実行して以下のコマンドを入力．
  ```
  wsl --install
  ```
  その後PC を一度再起動する．
2. WSL にUbuntu をインストール
  PowerShell を開き以下のコマンドを入力．
  ```
  wsl --install Ubuntu
  ```
  ユーザ名とパスワードを設定．
3. TeXLive を以下のコマンドでインストールする．
  ```
  sudo apt update && sudo apt install texlive-full
  ```

## 動作確認
1. `$ git clone git@github.com:kimushun1101/platex-vscode-template.git`  
  もしくは  
  GitHub ページの `Code<>▼` から `Download ZIP` して展開する．
2. VS Code で `File`→`Open Folder` でこのフォルダを開く．（）
3. [Docker の場合](#docker)は，Docker を起動した後にウィンドウ左下の`><` をクリックして`Reopen in container` を選択．  
  Docker でない場合には，推奨拡張機能をインストールする． 
  VS Code から提案されると思いますが、提案されない場合には，
  `Ctrl` + `Shift` + `X` でExtensions を開き`Search Extensions in Marketplace` に`@recommended` と入力すると以下の一覧が表示される．  
- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [テキスト校正くん](https://marketplace.visualstudio.com/items?itemName=ICS.japanese-proofreading)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) 
4. `sample.tex` を開いた状態で，`Ctrl` + `Alt` + `B`
5. ビルドの完了後に `Ctrl` + `Alt` + `V`

## 使い方
[動作確認](#動作確認)したディレクトリでそのまま作業（3番）を進めても良いですが，以下の手順で，ご自身のGitHub にリポジトリを作成してバージョン管理することをオススメします．
1. [GitHub](https://github.com/) アカウントの作成．[Git](https://git-scm.com/) をインストールして使い方を習得（とりあえずclone, add, commit, push ができればよい）．
2. `Use this template▼` から`Create a new repository`を行う．Private リポジトリとすることをオススメします．
2. `Code<>▼` から作成したリポジトリのパスをコピーして`$ git clone 作成したリポジトリのパス`
3. 論文を提出する学会などが配布しているTeX ファイルやそのスタイルファイルをこのディレクトリにコピーアンドペーストして，[動作確認](#動作確認)と同様の方法でビルドしてください．

## BibTex
- `reference.bib` は[Zotero](https://www.zotero.org/) や[Mendeley](https://www.mendeley.com/) などの文書管理ツールのエクスポート機能などで作成するか，[Google Scholar](https://scholar.google.co.jp/) より調べて`引用`→`BibTeX`などからコピーアンドペーストして加筆していくとよい．
- bst ファイルが提供されていない場合には，`out/sample.bbl` を`sample.tex` にコピーアンドペーストして，提出先が要求するフォーマットに手動で修正してください．

## 参考
- [LaTeX Workshop を使いこなす](https://qiita.com/Yarakashi_Kikohshi/items/a9357dd469320ffb65a0)
- Dockerイメージはこちらを使用させていただきました．https://github.com/tbistr/texlive-full-devcontainer

## ライセンス
The MIT License
