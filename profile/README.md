
[![Website](https://img.shields.io/badge/Easter%20Company-website-orange)](https://www.easter.company)
[![Twitter](https://img.shields.io/twitter/follow/eastercompany?label=Easter%20Company&style=social)](https://twitter.com/eastercompany)

### Production Applications

###### Easter Company
<a href="https://www.easter.company"><pre> Default Site           (Home)    [<b style="color: red !important;">DISABLED</b>] </pre></a>
<a href="https://eastercompany.eu.pythonanywhere.com">
                                     <pre> E Panel      (Administration)    [<b style="color: red !important;">DISABLED</b>] </pre></a>
                                     
###### Customer Overlord Clients
<a href="https://www.pardoewray.com"><pre> Parode Wray   (Career Finder)    [<b style="color: green !important;">LIVE</b>] </pre></a>
<a href="https://www.inverair.co.uk"><pre> Inverair     (Drone Services)    [<b style="color: green !important;">LIVE</b>] </pre></a>

<br/>
<br/>

### Frameworks & Libraries

<img align="left" alt="Flask" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/flask/flask.png" />
<img align="left" alt="Django" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/django/django.png" />
<img align="left" alt="Node.js" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/nodejs/nodejs.png" />
<img align="left" alt="Visual Studio Code" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/visual-studio-code/visual-studio-code.png" />
<img align="left" alt="Git" width="26px" src="https://raw.githubusercontent.com/github/explore/78df643247d429f6cc873026c0622819ad797942/topics/git/git.png" />
<img align="left" alt="GitHub" width="26px" src="https://raw.githubusercontent.com/github/explore/78df643247d429f6cc873026c0622819ad797942/topics/github/github.png" />
<img align="left" alt="Terminal" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/terminal/terminal.png" />

<br/>
<br/>

### Languages

<img align="left" alt="SQL" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/sql/sql.png" />
<img align="left" alt="Python" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/python/python.png" />
<img align="left" alt="JavaScript" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/javascript/javascript.png" />
<img align="left" alt="TypeScript" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/typescript/typescript.png" />
<img align="left" alt="HTML5" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/html/html.png" />
<img align="left" alt="CSS3" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/css/css.png" />
<img align="left" alt="React" width="26px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/react/react.png" />

<br/>
<br/>

### Social Presence

[<img align="left" alt="easter.company" width="22px" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" />][website]
[<img align="left" alt="Easter Company | YouTube" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/youtube.svg" />][youtube]
[<img align="left" alt="Easter Company | Twitter" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/twitter.svg" />][twitter]
[<img align="left" alt="Easter Company | Facebook" width="22px" src="https://image.freepik.com/free-icon/facebook-logo_318-53644.jpg" />][facebook]

[website]: https://www.easter.company/
[twitter]: https://twitter.com/eastercompany
[facebook]: https://facebook.com/eastercompany
[youtube]: https://www.youtube.com/channel/UC6JMuccPLOKRL9cI95ZtJQQ

<br/>
<br/>
<br/>

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
