alias ..='cd ..'
alias ....='cd ../..'
alias la='ls -la'
alias ll='ls -l'
alias lst="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias clr='clear'
alias s_http='python -m SimpleHTTPServer' # serve current folder via HTTP
alias s_smtp='python -m smtpd -n -c DebuggingServer localhost:1025' # SMTP test server, outputs to console
alias wget='wget --no-check-certificate'
alias pinst='sudo python setup.py install && sudo rm -r build && sudo rm -r dist && sudo rm -r *egg-info' # install a Python package
alias beep='echo -n "\a"'
alias fucknode="rm -rf node_modules && rm -rf bower_components"
alias nodeplz="npm install & bower install"

if is_mac; then
    alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
    alias oo='open .' # open current dir in OS X Finder
fi

if [[ -x "`whence -p dircolors`" ]]; then
	eval `dircolors`
	alias ls='ls -F --color=auto'
else
	alias ls='ls -F'
fi
