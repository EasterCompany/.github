
[![Website](https://img.shields.io/badge/Easter%20Company-website-orange)](https://www.easter.company)
[![Twitter](https://img.shields.io/twitter/follow/eastercompany?label=Easter%20Company&style=social)](https://twitter.com/eastercompany)

### Current Tool Box:

<img align="left" alt="Flask" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/flask/flask.png" />
<img align="left" alt="Django" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/django/django.png" />
<img align="left" alt="Node.js" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/nodejs/nodejs.png" />
<img align="left" alt="Visual Studio Code" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/visual-studio-code/visual-studio-code.png" />
<img align="left" alt="Git" width="26px" src="https://raw.githubusercontent.com/github/explore/78df643247d429f6cc873026c0622819ad797942/topics/git/git.png" />
<img align="left" alt="GitHub" width="26px" src="https://raw.githubusercontent.com/github/explore/78df643247d429f6cc873026c0622819ad797942/topics/github/github.png" />
<img align="left" alt="Terminal" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/terminal/terminal.png" />

<br/>
<br/>

### Preferred Languages:

<img align="left" alt="SQL" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/sql/sql.png" />
<img align="left" alt="Python" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/python/python.png" />
<img align="left" alt="HTML5" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/html/html.png" />
<img align="left" alt="CSS3" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/css/css.png" />
<img align="left" alt="JavaScript" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/javascript/javascript.png" />
<img align="left" alt="TypeScript" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/typescript/typescript.png" />
<img align="left" alt="React" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/react/react.png" />

<br/>
<br/>

### Follow me anywhere:

[<img align="left" alt="easter.company" width="22px" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" />][website]
[<img align="left" alt="Easter Company | YouTube" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/youtube.svg" />][youtube]
[<img align="left" alt="Easter Company | Twitter" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/twitter.svg" />][twitter]
[<img align="left" alt="Easter Company | Facebook" width="22px" src="https://image.freepik.com/free-icon/facebook-logo_318-53644.jpg" />][facebook]
[<img align="left" alt="Owen Cameron Easter | LinkedIn" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" />][linkedin]
[<img align="left" alt="Owen Cameron Easter | Instagram" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/instagram.svg" />][instagram]

[website]: https://www.easter.company/
[twitter]: https://twitter.com/eastercompany
[facebook]: https://facebook.com/eastercompany
[youtube]: https://www.youtube.com/channel/UC6JMuccPLOKRL9cI95ZtJQQ
[instagram]: https://www.instagram.com/oweneaster98
[linkedin]: https://www.linkedin.com/in/owen-easter-a4b9a9159

<br/>
<br/>
<br/>

## Developer Environment

### Copy my intial system setup by following these instructions

Execute the commands below (replace gitHubEmail/Name for your github email/name address)

```bash
sudo apt install -y --upgrade git

git config --global user.email "gitHubEmail"
git config --global user.name "gitHubName"

ssh-keygen -t ed25519 -C "gitHubEmail"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
```

Add the ssh key to your github profile and then clone this repository to your home directory

```bash
git clone git@github.com:oceaster/oceaster.git System --recurse-submodules
```

Then cd into the repo and begin the installation script.

```bash
cd System
./install.sh
```

Then open the hidden file named `.bashrc` and copy all of its contents to your clipboard

```bash
cd ~/System
nano .bashrc
```

Then open the file with the same name inside your home directory and paste the content into
that file

```bash
cd ~
nano .bashrc
```

### Setup an Easter Company Dev Environment

If you're an Easter Company Developer looking to setup their Environment; you will need to verify you have
read & write access within the Easter Company Organisation on Github - then proceed with the following steps.

- Run the `~/System/dev/install.sh` script.
- Edit your `~/Easter/Dev/Ext/Overlord/.config` files
- Run `./o migrate` from within `../Overlord` directory
- Run `./o install -clients`
- Run `./o build -all`
- Run `./o runserver`
- Success!
