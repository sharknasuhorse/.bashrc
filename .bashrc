# で出力がロックされてしまうのを防ぐ
stty stop undef

# よく使うエイリアスやら各コマンドのデフォルトのオプションを設定

export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'
alias la='ls -a'
#alias ll='ls -l'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias sc='screen'
alias ls='ls -FG'
alias ll='ls -alFG'

# プロンプトの表示をカスタマイズ
#axport PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \w \$\[\033[00m\]'

# もろもろ環境変数を設定
##myscripts
export PATH=$PATH:/sbin:/usr/sbin:~/Documents/scripts/ 

export PAGER='/usr/bin/lv -c' # man とかで使われる
export EDITOR='/usr/bin/vim' # visudo とかで使われる
export HISTSIZE=100000 # これだけコマンド履歴を残す
# 以下 3 つ文字コード
export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

##rootだと色が違う

if [ $UID -eq 0 ]; then
	    PS1="\[\033[31m\]\u@\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
		else
		PS1="\[\033[36m\]\u@\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi


#bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	  . $(brew --prefix)/etc/bash_completion
fi

#golang
if [ -x "`which go`" ]; then
    export GOPATH=$HOME/.go
    export PATH=$PATH:$GOPATH/bin
fi

## nodebrew
export PATH=$PATH:/Users/sharknasuhorse/.nodebrew/current/bin
##mac wifi
alias airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport
tmux new-session \; source-file ~/.tmux/new-session






