

## Setup Development Environment:

Execute the commands below (replace `gitHubEmail` & `gitHubName` with your github `email` & `username` respectively)

```bash
sudo apt install -y --upgrade git

git config --global user.email "gitHubEmail"
git config --global user.name "gitHubName"

ssh-keygen -t ed25519 -C "gitHubEmail"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
```
Copy the contents printed to the terminal by the previous `cat` command

**Add that ssh key to your github profile** 

and then clone this repository to your `~/` home directory

```bash
git clone git@github.com:EasterCompany/.github.git .github --recurse-submodules
```

Once you've gained permissions and cloned the repo; cd into it and begin the installation script

```bash
cd System && ./install.sh
```

Open the file named `.bashrc` and copy all of its contents to your clipboard

```bash
cd ~/System && cat .bashrc # or nano .bashrc
```

Then open the file with the same name inside your home directory and paste the content into
that file

```bash
cd ~ && nano .bashrc
```

### Setup an Easter Company Dev Environment

If you're an Easter Company Developer looking to setup their Environment; you will need to verify you have
read & write access within the Easter Company Organisation on Github - then proceed with the following steps.

- Run the `~/System/dev/install.sh` script.
- Edit your `~/Easter/Dev/Ext/Overlord/.config` files
- For a first time run & install use `./o migrate && ./o install -clients && ./o build -all && ./o runserver`.
- From there on re-run the server using `./o runserver` or single client using `./o runclient -client_name`
- Success!
