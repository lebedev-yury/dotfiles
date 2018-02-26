function mkcd
  mkdir $argv
  cd $argv
end

function fzfcheckout -d "Fuzzy-find and checkout a git branch"
  git branch --all | grep -v HEAD | string trim | fzf | xargs git checkout
end

function fhistory -d "Fuzzy-find history repeat"
  eval (history | fzf)
end

function fkill -d "Fuzzy-find and kill process"
  ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill
end

function fnvim -d "Fuzzy-find file and open in nvim"
  fzf | xargs nvim
end
