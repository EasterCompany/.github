echo
echo "  [DEV]   PULL"
echo
echo
echo "  Checkout 'main' for all repositories"
echo
echo

# [CHECKOUT] Developer Environment Root
cd ~/Easter/Dev git checkout main
echo
echo " ------------------------ "
echo

# [CHECKOUT] External Mains
cd ~/Easter/Dev/Ext/Overlord
git branch --set-upstream-to=origin/main main && git checkout main
echo

cd clients/default_angular
git branch --set-upstream-to=origin/main main && git checkout main
echo

cd ../default_react
git branch --set-upstream-to=origin/main main && git checkout main
echo
echo " ------------------------ "
echo

# [CHECKOUT] Internal Mains
cd ~/Easter/Dev/Int/Staging
git branch --set-upstream-to=origin/main main && git checkout main
echo
echo " ------------------------ "
echo

# [CHECKOUT] System Mains
cd ~/Easter/Dev
cd Sys
git branch --set-upstream-to=origin/main main && git checkout main
echo
echo " ------------------------ "
echo

# [PULL] Repository & Recurse Submodules
echo
echo
echo "  Pull 'main' for all repositories"
echo

cd ~/Easter/Dev
git pull --recurse-submodule
echo

cd ~/Easter/Dev
cd Sys
git pull origin main --recurse-submodules
echo

cd ~/Easter/Dev
cd Ext/Overlord
git pull origin main --recurse-submodules
echo

cd clients/default_angular
git pull origin main --recurse-submodules && cd ../..
echo

cd clients/default_react
git pull origin main --recurse-submodules && cd ../..
echo

cd ~/Easter/Dev
cd Int/Staging
git pull origin main --recurse-submodules && cd ../..
echo

# Done
echo
echo
echo "  Done!"
echo
