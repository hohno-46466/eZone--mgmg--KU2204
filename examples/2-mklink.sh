
# （１）まず、エクスプローラ（Windowsの場合）や Finder（Mac の場合）の設定を変更して拡張子を表示するようにしてください
#	この設定は、この講義終了後も有効にしておくことを強く推奨します

# （２）次にデスクトップに mgws2204 というフォルダを作ってください

# （３）このフォルダを開いて、test123.txt というファイルを作ってください（中身は空でもかまいません）

# （４）この時点で以下を実行してみてください

$ cd

$ ls -d /mnt/c/Users/*/Desktop/mgws2204

# （５）ls コマンドの出力は次のどちらに近いですか？

#   (A：正常) /mnt/c/Users/hohno/Desktop/mgws2204

# 　(B：エラー) ls: cannot access '/mnt/c/Users/*/Desktop/mgws2204': No such file or directory


# ------------------------------------------------

# (B) だった人

# 改めて以下を実行してみてください。その結果 (A) のようなメッセージがでたら、以下の「(A)だった人」に準じてください
# ただし、読み替えが必要(*)ですので「準じて」と言われてもわからない人は教員に相談してください

# (*) 以下の  /mnt/c/Users/*/Desktop/mgws2204 を /mnt/c/Users/*/*/Desktop/mgws2204 に読み替える

$cd

$ ls -d /mnt/c/Users/*/*/Desktop/mgws2204

# ------------------------------------------------

# (A) だった人

# まず以下を実行してください

$ cd

$ pwd 		# ホームディレクトリに移動していますか？

$ ln -s $(ls -d /mnt/c/Users/*/Desktop/mgws2204)

$ ls -l		# 以下のような行があれば OK です

# lrwxrwxrwx 1 hohno hohno    35 May  6 08:36  mgws2204 -> /mnt/c/Users/hohno/Desktop/mgws2204

$ ls -l mgws2204

# ------------------------------------------------

