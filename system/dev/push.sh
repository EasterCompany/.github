echo
echo "  [DEV]   PUSH"
echo
echo
echo "  Checkout 'main' for all repositories"
echo
echo

# [CHECKOUT]Developer Environment Root
$DEV git checkout main
echo

# [CHECKOUT]External Mains
cd ~/Easter/Dev
cd Ext/Overlord
git branch --set-upstream-to=origin/main main && git checkout main

cd clients/default_angular
git branch --set-upstream-to=origin/main main && git checkout main

cd ../default_react
git branch --set-upstream-to=origin/main main && git checkout main
echo

# [CHECKOUT]Internal Mains
cd ~/Easter/Dev
cd Int/Staging
git branch --set-upstream-to=origin/main main && git checkout main
echo

# [CHECKOUT]System Mains
cd ~/Easter/Dev
cd Sys
git branch --set-upstream-to=origin/main main && git checkout main
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

# [COMMIT] Changes
echo
echo
echo "  Commit all changes"
echo

# [PUSH] External Mains
cd ~/Easter/Dev/Ext/Overlord
cd clients/default_angular
git add . && git commit -m "Auto Commit" && git push
cd ../default_react
git add . && git commit -m "Auto Commit" && git push

cd ~/Easter/Dev
cd Ext/Overlord
git add . && git commit -m "Auto Commit" && git push

# [PUSH] Internal Mains
cd ~/Easter/Dev
cd Int/Staging
git add . && git commit -m "Auto Commit" && git push

# [PUSH] System Mains
cd ~/Easter/Dev
cd Sys
git add . && git commit -m "Auto Commit" && git push

# [PUSH] Developer Environment Root
cd ~/Easter/Dev
git add . && git commit -m "Auto Commit" && git push
git add . && git commit -m "Auto Commit" && git push

# Done
echo
echo
echo "  Done!"
echo
