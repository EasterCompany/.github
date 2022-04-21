echo ""
echo "  [SUDO PERMISSIONS REQUIRED]"
echo ""
sudo echo
echo "  TERMINATING ALL FUNCTIONS  "
echo " :=========================: "
sudo docker container stop $(sudo docker container list -q)
echo " :=========================: "
echo "  Completed Successfully ✅  "
echo ""
echo ""
