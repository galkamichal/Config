#Gauszton_ZSH_V_1_3

export ZSH="/home/m/.oh-my-zsh"
ZSH_THEME="common"
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(docker zsh-completions sudo web-search zsh-autosuggestions autojump zsh-syntax-highlighting dnf npm)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_MANUAL_REBIND=1

alias myip="curl http://ipecho.net/plain; echo"
alias hydrarecon="python3 /home/m/tools/HydraRecon/hydrarecon.py"
alias knock="python2 /home/m/tools/knock/knockpy/knockpy.py"
alias sublister="python3 /home/m/tools/Sublist3r/sublist3r.py"
alias dirsearch="python3 /home/m/tools/dirsearch/dirsearch.py"
alias striker="python3 /home/m/tools/Striker/striker.py"
alias pwnxxs=" python3 /home/m/tools/PwnXSS/pwnxss.py"
alias ffuf="/home/m/tools/ffuf/ffuf"
alias httprobe="/home/m/go/bin/httprobe"
alias photon="python3 /home/m/tools/Photon/photon.py"
alias gobuster="/home/m/go/bin/gobuster"
alias kxss="/home/m/go/bin/kxss"
alias subfinder="/tools/subfinder/subfinder"

speedtest() {
    curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -
}

geoip() {
    if [ "$1" ]; then
        curl "http://api.db-ip.com/v2/free/$1"
    else
        curl "http://api.db-ip.com/v2/free/$(myip)"
    fi
}
