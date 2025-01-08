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
