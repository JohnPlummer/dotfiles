dotfiles::exists() {
    command -v "$1" > /dev/null 2>&1
}

dotfiles::is_git() {
    [[ $(command git rev-parse --is-inside-work-tree 2>/dev/null) == true ]]
}

dotfiles::bold() {
    echo -n "%B$1%b"
}

dotfiles::print() {
    local color content bold
    [[ -n "$1" ]] && color="%F{$1}" || color="%f"
    [[ -n "$2" ]] && content="$2" || content=""

    [[ -z "$2" ]] && content="$1"

    echo -n "$color"
    echo -n "$content"
    echo -n "%{%b%f%}"
}

stage() {
  branch=$(git rev-parse --abbrev-ref HEAD)
  echo "************ Branch to stage: $branch"
  if [ "$branch" == "staging" ] ; then
     echo ":( Switch to the feature branch first (you are on staging!)"
     return
  fi
  git branch -D staging
  git fetch
  git checkout staging
  hopefully_staging=$(git rev-parse --abbrev-ref HEAD)
  if [ "$hopefully_staging" != "staging" ] ; then
     echo ":( Could not checkout staging, stash your local changes first"
     return
  fi
  echo "************ Checked out a fresh staging branch"
  echo "Attempting merge..."
  git merge $branch --no-commit
  while true; do
    conflicts=$(git ls-files -u | wc -l)
    if [ "$conflicts" -gt 0 ] ; then
      echo ":| There are merge conflicts! Please fix them before committing"
      while true; do
        read -p "Fixed the conflcts and staged all the changes? (type 'yes' or 'cancel' to reset and go back - WARNING: YOU WILL LOOSE ALL CHANGES) " yn
        case $yn in
          [Yy]* )
            break
            ;;
          cancel )
            git reset --hard HEAD
            git checkout $branch
            echo "************ Cancelled: Nothing's been staged and we are back on $branch"
            return
            ;;
          * )
            echo "Please answer yes."
            ;;
        esac
      done
    else
      break;
    fi
  done
  echo "No conflicts. Committing..."
  git commit --no-edit
  echo "************ Feature branch merged into staging"
  git push
  echo "************ Staging branch pushed to origin"
  git checkout $branch
  echo "************ Switched back to feature branch $branch"
  echo "************ $branch was successfully staged!"
}

