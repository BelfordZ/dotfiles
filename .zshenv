echo "Initialization started"
for file in $HOME/dotfiles/{init,keys}/*.sh; do
    echo "loading $file... "
    source "$file"
    echo "done loading $file"
done
