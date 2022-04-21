echo
echo "  [DEV]   STATUS"
echo
echo "  Git 'status' for all repositories"
echo
echo

# STATUS Developer Environment Root
echo
echo "  ==: DEV :=="
$DEV git status
echo
echo

# STATUS External Mains
echo "  ==: OVERLORD :=="
cd Ext/Overlord && git status
cd ../..
echo
echo
# STATUS Internal Mains
echo "  ==: STAGING :=="
cd Int/Staging && git status
cd ../..
echo
echo
# STATUS System Mains
echo "  ==: SYSTEM :=="
cd Sys && git status
cd ..
echo
echo
# Done
echo "  Done!"
echo
