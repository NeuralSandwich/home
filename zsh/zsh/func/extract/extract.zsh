# Extract

# Easy archive expansion
function extract() {
  if [[ -f $1 ]] ; then
    case $1 in
      *.tar.bz2)  tar xvjf $1   ;;
      *.tar.gz)   tar xzvf $1   ;;
      *.bz2)      bunzip2 $1    ;;
      *.rar)      rar x $1      ;;
      *.gx)       gunzip $1     ;;
      *.tar)      tar xvf $1    ;;
      *.tbz2)     tar xvjf $1   ;;
      *.tgz)      tar xzvf $1   ;;
      *.zip)      unzip $1      ;;
      *.Z)        uncompress $1 ;;
      *.7z)       7z x $1       ;;
      *)          echo "Don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}
