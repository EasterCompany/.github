echo
echo "  [DEV]"
echo
echo "  Git 'status' for all repositories"
echo
echo

# STATUS Developer Environment Root
$DEV git status

# STATUS External Mains
cd Ext/Overlord && git status
cd ../Client && git status
cd ../..

# STATUS Internal Mains
cd Int/Staging && git status
cd ../..

# STATUS System Mains
cd Sys && git status
cd ..

echo
echo "  [TERMINAL 0] Launching in default browser"
xdg-open https://eu.pythonanywhere.com/user/eastercompany/consoles/243641/ & disown
echo
echo "  [DEV App Browser] Launching in default browser"
xdg-open https://eastercompany.eu.pythonanywhere.com & disown
echo
echo "  [VSCode] Launching as default environment"
cd $dev
code .
echo
clear
