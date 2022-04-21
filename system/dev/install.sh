echo
echo "  [DEV]   OVERLORD INSTALLER"
echo
echo " Installing... [0%] "
echo
cd ~/Easter
git clone git@github.com:EasterCompany/Dev.git --recurse-submodules
git clone git@github.com:EasterCompany/Lab.git --recurse-submodules
git clone git@github.com:EasterCompany/Prd.git --recurse-submodules
echo
dev.goto
dev.pull
cd ~/Easter/Dev/Ext/Overlord
python3.9 manage.py tools install
clear
echo
echo "  [OVERLORD INSTALLER]"
echo
echo " Installed! [100%] "
echo
echo " Successfully Installed Overlord."
echo
echo " [NOTE] You will probably want to"
echo "  update your .config/server.json"
echo "  and your .config/.secret.json  "
echo "  files accordingly              "
echo
