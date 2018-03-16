echo "Loading Path"
source "$HOME/dotfiles/path.sh"
echo "Loading Path Done!"

echo "Loading Keys"
for file in $HOME/dotfiles/keys/*.sh; do
    source "$file"
done
echo "Loading Keys Done!"
