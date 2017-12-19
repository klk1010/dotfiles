alias ni='npm install'
alias nid='npm install -D'
alias nps='jq .scripts < package.json'
alias npv='echo "v$(jq -r .version < package.json)"'
alias nr='npm run'
alias nrb='npm run build'
alias nrc='npm run check'
alias nrd='npm run dev'
alias nrfi='rm -rf node_modules && npm install'
alias nrl='npm run lint'
alias ns='npm start'
alias nt='npm test'
alias nv='npm version'
alias nvM='npm version major'
alias nvm='npm version minor'
alias nvp='npm version patch'

function npf() {
  jq ".$2" < $(npm ls --parseable "$1")/package.json
}

function nplf() {
  jq ".$2" < "./node_modules/$1/package.json"
}
