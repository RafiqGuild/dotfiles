# external scripts
source ~/docker-aliases.sh

# aws/sso stuff
alias dev='aws2-wrap --profile guild-dev'
alias staging='aws2-wrap --profile guild-staging'
alias prod='aws2-wrap --profile guild-prod'

alias dev-export='eval "$(aws2-wrap --profile guild-dev --export)"'
alias staging-export='eval "$(aws2-wrap --profile guild-staging --export)"'
alias prod-export='eval "$(aws2-wrap --profile guild-prod --export)"'

function aws-login() {
    aws sso login --profile=guild-$1
}

function aws-dev() {
    aws $@ --profile guild-dev
}

function aws-staging() {
    aws $@ --profile guild-staging
}
function aws-prod() {
    aws $@ --profile guild-prod
}

# search history
hg() {
    history | grep -i $1
}
