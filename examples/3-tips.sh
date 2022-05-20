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

$ grep "$HOME/bin" $HOME/.bashrc | grep "PATH="		# 当該スクリプトが存在しない場合は実行しなくてよい（結果は明白だから）
$ grep '$HOME/bin' $HOME/.bashrc | grep "PATH="		# 同上
$ grep "$HOME/bin" $HOME/.bash_profile | grep "PATH="	# 同上
$ grep '$HOME/bin' $HOME/.bash_profile | grep "PATH="	# 同
$ grep "$HOME/bin" $HOME/.profile | grep "PATH="	# 同上
$ grep '$HOME/bin' $HOME/.profile | grep "PATH="	# 同上

#
# PATH を追加する賢い方法（少し複雑かもしれないがやってみよう！）
#

# 作業場所に移動

$ cd
$ cd Desktop/mgmg22Q1
$ mkdir tmp
$ cd tmp

# ツールをダウンロード

$ wget https://github.com/hohno-46466/eZone--mgmg--KU2204/blob/main/scripts/addpath.sh

# addpath.sh が作られていることを確認

$ ls -l addpath.sh
$ less addpath.sh

# PATH $ HOME/bin を PATH に加えたい場合

$ sh addpath.sh '$HOME/bin'
ZZ

# PATH $ HOME/kotoriotoko/BIN を PATH に加えたい場合

$ sh addpath.sh '$HOMEkotoriotoko/BIN'

