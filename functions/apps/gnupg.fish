# https://www.gnupg.org
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg
alias gpg='gpg --homedir "$GNUPGHOME"'
