dir=$(pwd)
backup_dir=~/.backup_dotfiles
files="vimrc vim gvimrc tmux.conf irbrc atom zshrc bash_profile"

mkdir -p $backup_dir

for file in $files; do
  echo "Backing up ~/.$file to $backup_dir/.$file"
  mv ~/.$file $backup_dir/.$file
  echo "Linking $dir/$file to ~/.$file"
  ln -sn $dir/$file ~/.$file
  echo
done
