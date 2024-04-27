# マージ済みブランチを一括削除するスクリプト
# なおmainとdevelopは除く
git branch | Select-String -NotMatch "main|develop" | % { git branch -d ($_.ToString().Trim()) }