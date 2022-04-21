echo
echo "  [SUDO PERMISSIONS REQUIRED]  "
echo
sudo echo
echo
echo "[ASSET]"
sudo docker restart asset_celery > /dev/null
sudo docker restart asset_celerybeat > /dev/null
echo "  Celery                  ✅"
sudo docker restart asset > /dev/null
echo "  Asset                   ✅"
echo
echo "[DO]"
sudo docker restart do > /dev/null
echo "  DO                      ✅"
echo
echo "[PORTAL]"
sudo docker restart portal > /dev/null
echo "  Portal                  ✅"
sudo docker restart portal_fe > /dev/null
echo "  Portal-FE               ✅"
echo
echo "[REDIS]"
sudo docker restart redis > /dev/null
echo "  Redis                   ✅"
echo
echo
