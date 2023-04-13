mkdir $HOME/.control
curl https://raw.githubusercontent.com/Arikato111/control/ltp/control >> $HOME/.control/control
curl https://raw.githubusercontent.com/Arikato111/control/ltp/ltp >> $HOME/.control/ltp
echo "export PATH=\$PATH:$HOME/.control" >> $HOME/.bashrc
sudo chmod +x $HOME/.control/ltp