#!/bin/sh
# Driveの本体をリポジトリにコピーして、コミット＆push する。
# 使い方:  sh deploy.sh "変更の一言"
set -e
SRC="G:/マイドライブ/06_資格（宅建）/宅建タワー.html"
cd "$(dirname "$0")"
cp "$SRC" index.html
git add index.html
git commit -m "${1:-宅建タワー更新}" || { echo "変更なし"; exit 0; }
git push
echo "反映まで1分ほど待ってね"
