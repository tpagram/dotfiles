dir=~/`dirname $0`
backup_dir=~/.backup_dotfiles
files="vimrc vim"

mkdir -p $backup_dir

for file in $files; do
  echo "Backing up ~/.$file to $backup_dir/.$file"
  mv ~/.$file $backup_dir/.$file
  echo "Linking $dir/$file to ~/.$file"
  ln -s $dir/$file ~/.$file 
done
