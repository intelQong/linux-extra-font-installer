<h1 align="center">Linux Font Installer</h1>
<p align="center"><g-emoji class="g-emoji" alias="penguin" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/1f427.png">🐧</g-emoji> This tool can be used to easily install essential fonts on any Linux Distribution.</p>

**<g-emoji class="g-emoji" alias="heavy_check_mark" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2714.png">✔</g-emoji> One command installation <br>
<g-emoji class="g-emoji" alias="heavy_check_mark" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/2714.png">✔</g-emoji> Works on any Linux Distribution**

## Pre-requisites:
<g-emoji class="g-emoji" alias="warning" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/26a0.png">⚠️</g-emoji> You must have **WGET** installed on your machine. By default, the Wget package comes pre-installed in most Linux operating systems. If not, then install it using your system's distro pkg manager. (i.e. `sudo apt install wget`)


#### :star: Single Line Command (Bash):
Just run this command on your terminal...

`wget -q --show-progress https://raw.githubusercontent.com/intelqong/linux-extra-font-installer/main/install.sh -O install.sh; chmod +x install.sh; bash install.sh; rm install.sh`
#### For Debian based systems:
`wget -q --show-progress https://raw.githubusercontent.com/intelqong/linux-extra-font-installer/main/install.sh -O install.sh; chmod +x install.sh; bash install.sh; rm install.sh; sudo apt install ttf-mscorefonts-installer -y`
#### :star: Manual Installation (Bash):

*   Clone this repository. <br>
			`git clone https://github.com/intelqong/linux-extra-font-installer`

*   Go to the 'linux-font-installer' folder. <br>
			`cd linux-extra-font-installer`

*   Execute the install.sh script. <br>
		     `bash install.sh`
		     
*   Make sure that the file is executable. If not use <br>
			 `sudo chmod +x install.sh`
