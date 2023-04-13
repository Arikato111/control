mkdir $HOME/.ltp
curl https://raw.githubusercontent.com/Arikato111/control/ltp/control >> $HOME/.ltp/control
curl https://raw.githubusercontent.com/Arikato111/control/ltp/ltp >> $HOME/.ltp/ltp
echo "export PATH=\$PATH:$HOME/.ltp" >> $HOME/.bashrc
echo "allow excute ltp file in ./ltp/ltp";
sudo chmod +x $HOME/.ltp/ltp
echo "install successfuly please restart your terminal to use ltp";