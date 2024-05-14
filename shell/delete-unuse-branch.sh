# マージ済みブランチを一括削除するスクリプト
# なおmainとdevelopは除く
git branch | grep -v "main|develop" | xargs git branch -d