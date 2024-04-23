#!/bin/sh
# 手動でmarp動かしたい時のスクリプト

cd $(dirname ${0})

FILE=$1

if [[ ! -f $FILE ]]; then
    echo "ファイルが存在しません: $FILE"
    exit 1
fi

# ファイル名だけ
FILE_NAME=$(basename "$FILE")
FILE_NAME="${FILE_NAME%.*}"
# 拡張子が欲しい時は "${filename##*.}"
DOWNLOAD=~/Downloads

if [ ! -n $DOWNLOAD_DIR ]; then
    if [ -d $DOWNLOAD_DIR ]; then
        npx -y @marp-team/marp-cli@latest --stdin false --bespoke.transition --stdin false --allow-local-files "${FILE}" -o "${DOWNLOAD_DIR}/$FILE_NAME.pdf"
    else
        npx -y @marp-team/marp-cli@latest --stdin false --bespoke.transition --stdin false --allow-local-files "${FILE}" -o "${DOWNLOAD}/$FILE_NAME.pdf"
    fi
else
    echo "${DOWNLOAD}/$FILE_NAME.pdf"
    npx -y @marp-team/marp-cli@latest --stdin false --bespoke.transition --stdin false --allow-local-files "${FILE}" -o "${DOWNLOAD}/$FILE_NAME.pdf"
fi