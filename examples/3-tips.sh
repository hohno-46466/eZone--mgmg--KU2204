#
# ちょっとしたワンライナー
#

# (1) 環境変数 PATH の内容をわかりやすく表示

$ echo $PATH | tr : '\n' | cat -n


# (2) 環境変数 PATH に $HOME/bin が含まれているか確認

$ echo $PATH | tr : '\n' | grep "$HOME/bin"

# (3) $HOME/.bashrc や $HOME/.profile などの初期設定スクリプト（run script）のうちどれが存在するかを確認

ls -l $HOME/.bashrc $HOME/.bash_profile $HOME/.profile


# (4) $HOME/.bashrc や $HOME/.profile などの初期設定スクリプト（run script）にて $HOME/bin を PATH に追加しているかを確認

$ grep "$HOME/bin" $HOME/.bashrc | grep "PATH="		# 存在しない場合は実行しなくてよい（結果は明白だから）
$ grep '$HOME/bin' $HOME/.bashrc | grep "PATH="		# 存在しない場合は実行しなくてよい（結果は明白だから）
$ grep "$HOME/bin" $HOME/.bash_profile | grep "PATH="	# 存在しない場合は実行しなくてよい（結果は明白だから）
$ grep '$HOME/bin' $HOME/.bash_profile | grep "PATH="	# 存在しない場合は実行しなくてよい（結果は明白だから）
$ grep "$HOME/bin" $HOME/.profile | grep "PATH="	# 存在しない場合は実行しなくてよい（結果は明白だから）
$ grep '$HOME/bin' $HOME/.profile | grep "PATH="	# 存在しない場合は実行しなくてよい（結果は明白だから）


