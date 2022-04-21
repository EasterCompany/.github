echo
echo "  [DEV]        CHECKOUT                   "
echo "  Checks out 'main' for all repositories  "
echo
echo

# [CHECKOUT] Developer Environment Root
cd ~/Easter/Dev git checkout main
echo
echo " ------------------------ "
echo

# [CHECKOUT] External Mains
cd Ext/Overlord
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
cd ~/Easter/Dev
cd Int/Staging
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

# Done
echo
echo
echo "  Done!"
echo
