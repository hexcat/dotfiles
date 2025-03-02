: ${HEXCAT_USER_AGENT:="User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36"}

alias nst="sudo nmap -v -T4 -Pn -A"
alias nsa="sudo nmap -v -T4 -Pn -A -p-"
alias nsaf="sudo nmap -v -T4 -Pn -A -p- --defeat-rst-ratelimit"
alias nu="sudo nmap -v -T4 -Pn -sU -sV --version-intensity=0"

alias ffuf='ffuf -H "${HEXCAT_USER_AGENT}"'

custom-accept-line() {
  EBUFFER=${(e)BUFFER}
  if [[ "$EBUFFER" != "$BUFFER" ]]; then
    echo
    echo -n ">> ${(e)BUFFER}"
  fi
  zle .accept-line
}
zle -N accept-line custom-accept-line
