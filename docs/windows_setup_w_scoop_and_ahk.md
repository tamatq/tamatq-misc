# ScoopとAutoHotKeyによるWindowsのセットアップ

https://twitter.com/tamatq1/status/1146218436709629952

TODO:

- md lintの整備
- 全コピペ
- 間違ってるところを直す
- スクショを作成しなおし
- 整形
- 再投稿

```txt

tamatq
@tamatq1
·
8月1日
03_install_7zip_for_git.ahk
https://gist.github.com/tamatq/9b17e659492817c2bf8b52877a9ef4ad#file-03_install_7zip_for_git-ahk
tamatq
@tamatq1
·
8月2日
04_install_git_for_scoop_update.ahk
https://gist.github.com/tamatq/9b17e659492817c2bf8b52877a9ef4ad#file-04_install_git_for_scoop_update-ahk
tamatq
@tamatq1
·
8月5日
05_scoop_update.ahk
https://gist.github.com/tamatq/9b17e659492817c2bf8b52877a9ef4ad#file-05_scoop_update-ahk
tamatq
@tamatq1
·
8月7日
ここまでで、ahkベースのexeファイルで新Windowsにscoopを導入することができる。ahkスクリプトをexeにするのは右クリックから一発：
ahk2exe | AutoHotKey
https://so-zou.jp/software/tool/system/auto-hot-key/tool/compiler.htm#context-menu

このahkとexeを適当なクラウドストレージに入れておいてそのフォルダのzipをダウンロードできるようにしておけば楽。
tamatq
@tamatq1
·
8月9日
このahkをコンパイルしたりahkファイルのまま実行するなどのメンテナンス作業をするにはahk自身を導入する必要がある。
ahkもscoopで導入できる。その際、extraバケットが必要になる。
tamatq
@tamatq1
·
8月11日
というわけで、 06_scoop_add_bucket_extras.ahk 。
https://gist.github.com/tamatq/9b17e659492817c2bf8b52877a9ef4ad#file-06_scoop_add_bucket_extras-ahk
tamatq
@tamatq1
·
8月13日
そして、ahk自身を入れる。.ahkの関連付け設定のためにahkのインストーラーも起動する。

07_install_ahk.ahk
https://gist.github.com/tamatq/9b17e659492817c2bf8b52877a9ef4ad#file-07_install_ahk-ahk
tamatq
@tamatq1
·
8月15日
ここまでで、新しいWindows機にahkでscoopを導入し、ahk自身も導入することができた。
```
