# Chrome Setup

sudo apt upgrade
sudo apt install curl software-properties-common apt-transport-https ca-certificates -y
sudo apt autoremove
curl -fSsL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg > /dev/null
echo deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main | sudo tee /etc/apt/sources.list.d/google-chrome.list
ls -l /etc/apt/sources.list.d/google-chrome.list
cat  /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable

 

