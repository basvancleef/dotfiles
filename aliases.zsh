# NAVIGATION
alias home="cd ~"
alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"
alias develop="cd ~/Developer"
alias back="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# FILES
alias zshconfig="vim ~/.zshrc"
alias bashconfig="vim ~/.bashrc"
alias vimconfig="vim ~/.vimrc"
alias gitconfig="vim ~/.gitconfig"
alias reload="source ~/.zshrc"

# ARTISAN
alias a="php artisan"
alias tink="php artisan tinker"
alias serve="php artisan serve"
alias migrate="php artisan migrate"
alias cc="php artisan cache:clear"
alias queue="php artisan queue:work --timeout=3600"

alias log="open storage/logs/laravel-$(date '+%Y-%m-%d').log"

# COMPOSER
alias compsoer="composer"
alias comopser="composer"
alias cu="composer update"
alias ci="composer install"
alias cda="composer dump-autoload"

# GIT
alias pull="git pull --autostash"
alias push="git push"
alias commit="git commit"
alias checkout="git checkout"
alias master="git checkout master"
alias main="git checkout main"
alias accept="git checkout accept"
alias develop="git checkout develop"
alias remote="git remote -v"
alias fixup="git commit --fixup"

###########################################################################

# Start dev build
# Usage: `dev` or `dev dashboard`
dev() {
        _FILTER="$1"

        if [ -f "pnpm-lock.yaml" ]; then
                if [ -z "$_FILTER" ]; then
                        pnpm dev
                else
                        pnpm --filter="*$1*" dev
                fi
        else
                npm run dev
        fi
}

# Open jira issue or project
# Usage: `jira ABC-123` or `jira ABC` or just `jira`
jira() {
  ISSUE=$1
  while [[ -z "$ISSUE" ]]
  do
    read "ISSUE?Jira key: "
  done

  open "https://bttr.atlassian.net/browse/$ISSUE"
}
