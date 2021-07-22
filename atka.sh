clear

printf '     ____________________  __.  _____     \n'
printf '    /  _  \__    ___/    |/ _| /  _  \    \n'
printf '   /  /_\  \|    |  |      <  /  /_\  \   \n'
printf '  /    |    \    |  |    |  \/    |    \  \n'
printf '  \____|__  /____|  |____|__ \____|__  /  \n'
printf '          \/                \/       \/   \n'
echo " "
echo "	~*|/| Add To Key Agent |\|*~"


echo " "
echo "Here are the private keys that correspond to a public key "
echo "currently present in your local .ssh directory: "
echo " "
echo " ---- "
for i in $(ls /home/$USER/.ssh/*.pub)
do
	FILE=$i
	f=$(basename $FILE)
  echo -e "|-->"  ${f%%.*}
done
echo " ---- "
echo " "
read -p "Press [enter] to begin adding your keys to the SSH key agent:"

for i in $(ls /home/$USER/.ssh/*.pub)
do
	FILE=$i
	f=$(basename $FILE)
  ssh-add /home/$USER/.ssh/${f%%.*}
done


