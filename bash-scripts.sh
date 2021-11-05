# external scripts
source ~/docker-aliases.sh

# aws/sso stuff
alias dev='aws2-wrap --profile guild-dev'
alias staging='aws2-wrap --profile guild-staging'
alias prod='aws2-wrap --profile guild-prod'
alias aws-login='aws sso login --profile=guild-dev && aws sso login --profile=guild-staging && aws sso login --profile=guild-prod'

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
