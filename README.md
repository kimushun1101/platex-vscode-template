# platex-vscode-template
**[開発環境構築](#開発環境構築)の方法も記述しています．**  
Visual Studio Code (VS Code) で日本語論文をLaTeX で書くときのテンプレート．
pLaTeX でのビルドを行う．  
**Windows ユーザーが極力 GUI で環境構築をしたいという要望にお応えするために[説明スライド](https://kimushun1101.github.io/How-to-use-platex-vscode-template/how-to-use-platex-vscode-templete.pdf)を作成しました．**  
LaTeX 自体の説明や書き方については，[sample.tex](./sample.tex) や[岡島先生の制御工学ブログ](https://blog.control-theory.com/entry/latex-paper) などが参考になると思います．  

| ディレクトリ | 含まれるファイルの種類          　　　　    |
| ------------- | ----------------------------------- |
| .devcontainer | Dev Container (Docker) の設定ファイル |
| .vscode       | VS Code 用の設定ファイル           　　|
| fig　　        | 論文に使用する画像ファイル           　　|
| out           | LaTeX による生成ファイル(PDF もここ) 　　|
| scripts       | VS Code Tasks から呼ばれる便利スクリプト |

## よく使うショートカットキー
| ショートカットキー          |  機能                    |
| ------------------------- | ------------------------ |
| `Ctrl` + `Alt` + `B`  　  | ビルド                    |
| `Ctrl` + `Alt` + `V` 　　 | PDF を表示                |
| `Ctrl` + `Alt` + `C` 　　 | 中間ファイルの削除         |
| `Ctrl` + `Alt` + `M`  　　| 数式プレビュの表示         |
| `Ctrl` + `Alt` + `J` 　　 | PDF の該当の場所にジャンプ |
| PDF を `Ctrl` + `クリック` | .tex の該当の行にジャンプ |
<!-- | `Ctrl` + `Shift` + `M`    | エラーやワーニングの確認  |
| `Ctrl` + `Shift` + `U`    | ログファイルの確認       | -->

.tex ファイルの保存時にも自動ビルドが実行される設定としている．

## 開発環境構築
前提として[VS Code](https://code.visualstudio.com/) をインストールしてください．  
[Git](https://git-scm.com/) は必須ではありませんが，インストールすることを推奨します．  
LaTeX の環境はTeXLive を使用しますが，以下の3つの方法から選択できます．

### ネイティブ
OS によってインストール方法が異なるので[TeXLive のページ](https://texwiki.texjp.org/?TeX%20Live#w628bee6)を参照．  
Windows の場合にはコンパイル速度が遅いので他の方法をオススメします．

### Docker
OS によってインストール方法が異なるので[Docker のページ](https://docs.docker.com/engine/install/)を参照．  
現在のPC にLaTeX の環境構築をしたくない場合にオススメ．
Windows の場合にはネイティブよりもコンパイル速度が速い．

### WSL (Windows Subsystem for Linux)
Windows 限定．
Windows でもっともコンパイル速度を出すならばこれ．
環境構築は以下のコマンド3 つで完了する．  
まずWSL をインストールするために，PowerShell を**管理者権限で実行**して以下のコマンドを入力．
```
wsl --install
```
その後PC を一度再起動する．
PowerShell を開き，以下のコマンドを入力することでWSL にUbuntu をインストール．
```
wsl --install -d Ubuntu
```
ユーザ名とパスワードを設定してログインされた後，以下のコマンドでTeXLive をインストールする．ついでに Git と ImageMagick もインストールしておく．
```
sudo apt update && sudo apt install texlive-full git imagemagick -y
```

## 動作確認
1. Git を使用していない場合には，GitHub ページの `<>Code▼` から `Download ZIP` して展開し，VS Code で `File`→`Open Folder` でこのフォルダを開く．  
Git が使用できる場合には以下のコマンドで，このリポジトリをクローンして開ける．

  ```
  git clone https://github.com/kimushun1101/platex-vscode-template.git
  code platex-vscode-template
  ```

2. [Docker の場合](#docker)は，Docker を起動した後にウィンドウ左下の`><` をクリックして`Reopen in container` を選択．  
  Docker 以外の場合には，推奨拡張機能をインストール．  
  `Ctrl` + `Shift` + `X` でExtensions を開き`Search Extensions in Marketplace` のテキストボックスに`@recommended` と入力すると表示される，以下の拡張機能をinstall をクリック．  
    - [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
    - [テキスト校正くん](https://marketplace.visualstudio.com/items?itemName=ICS.japanese-proofreading)
    - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
    - [Tasks Shell Input](https://marketplace.visualstudio.com/items?itemName=augustocdias.tasks-shell-input)
3. `sample.tex` を開いた状態で，`Ctrl` + `Alt` + `B` でビルド．
4. ビルドの完了後に `Ctrl` + `Alt` + `V` で生成したPDF を確認．
5. 論文を提出する学会などが配布しているTeX ファイルやそのスタイルファイルをこのディレクトリにコピーアンドペーストして，手順3，4 と同様の方法でビルド，確認．
  現在のディレクトリをエクスプローラーで表示したい場合には，`Ctrl` + `Shift` + `X` で Explorer を開き，右クリックを Reveal in File Explorer（日本語だと「エクスプローラーで表示する」）をクリック．

## GitHubによるバージョン管理
[動作確認](#動作確認)したディレクトリでそのまま作業を進めても良いが，以下の手順で，ご自身のGitHub にリポジトリを作成してバージョン管理することをオススメします．
1. [GitHub](https://github.com/) アカウントの作成．
2. `Use this template▼` から`Create a new repository`を行う．Private リポジトリとすることを推奨．
3. `Code<>▼` から作成したリポジトリのパスをコピーして，端末で`git clone 作成したリポジトリのパス`を実行．
4. [動作確認](#動作確認)と同様にビルド．
5. 作業の区切りの良いところでgit add, commit, push する．  
[VS Code 上でGUI を用いた操作](https://miya-system-works.com/blog/detail/vscode-github/)も可能．

## BiBTeX
BiBTeX を用いると参考文献をフォーマットを揃えて自動で出力してくれるようになります．  
ただしBiBTeX のスタイルファイル（.bst）を配布してくれている学会は少ない......
- `reference.bib` は[Zotero](https://www.zotero.org/) や[Mendeley](https://www.mendeley.com/) などの文書管理ツールのエクスポート機能などで作成するか，[Google Scholar](https://scholar.google.co.jp/) より調べて`引用`→`BibTeX`などからコピーアンドペーストして加筆していくとよい．
- bst ファイルが提供されていない場合には，`out/sample.bbl` を`sample.tex` にコピーアンドペーストして，提出先が要求するフォーマットに手動で修正してください．

## VS Code Tasks
（Ubuntu，WSL でテスト済み，Mac は未テスト，Windows ネイティブとDocker は未対応）  
`Ctrl` + `Shift` + `P` で開くコマンドパレットに `run task` と入力して実行したい処理を選択できる．
- `convert a image file into the eps format`  
    fig ディレクトリにあるファイルを 1 つ選択する．そのファイルを eps に変換して fig ディレクトリに格納します．  
    (古いスタイルファイルなどでなければ，PNG や JPEG，PDF も読み込めますので不要です．)
    ImageMagick のインストールが必要です．
- `delete Zone.Identifier`  
    fig ディレクトリにある Zone.Identifier ファイルを削除します．  
    Zone.Identifier ファイルは Windows から画像ファイルを WSL のフォルダに移したときに生成される．

## PDF ファイルのリリース

Git tag をつけて push すると，その commit でのコンパイル結果である PDF を GitHub Release に自動でアップロードします．  
1. GitHub のページで，リポジトリの権限を `Setting` → `Actions` → `General` → `Workflow permissions` を `Read and write permissions` としてください．
2. VS Code で `.github/workflows/compile_and_release.yml` の `TEX_FILE_NAME` をコンパイルしたいファイル名（拡張子なし）で設定する．
3. VS Code で `Ctrl` + `J` で出る `TERMINAL` に以下のコマンドを実行する．  
    `タグ名`や`メッセージ`は適宜変更してください．
    ```
    git tag -a タグ名 -m 'メッセージ'
    git push origin タグ名
    ```
4. GitHub のページで，GitHub Actions が完了した後，`Releases` から PDF が確認できる．


## 参考
- [LaTeX Workshop を使いこなす](https://qiita.com/Yarakashi_Kikohshi/items/a9357dd469320ffb65a0)
- Dockerイメージはこちらを使用させていただきました．https://github.com/tbistr/texlive-full-devcontainer

## ライセンス
The MIT License
