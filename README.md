# dotfiles

## 注意

* (今のところ) Mac用
* 手動で行う手順 & 非公開のファイルなど -> Dropboxで管理

## インストール

### リポジトリからクローン

```bash
git clone https://github.com/iwamula/dotfiles.git
```

### `dotfiles/scripts/` のスクリプトを順番に実行する
* `1_init.sh`
  * 簡単な初期化
* `2_brew-install.sh`
  * Homebrewのインストールとパッケージのインストール
  * いくつかのパッケージは時間がかかるので手動でも良い
* `3_set-defalut-zsh.sh`
  * デフォルトシェルをzshにする
* `4_dotfiles-alias.sh`
  * `~/`に全てのdotfilesのシンボリックリンクを貼る
* `5_dropbox-work-alias.sh`
  * `~/Work` に `Dropbox/Work/*` のシンボリックリンクを貼る
  *  Dropboxの同期を済ませておくこと
