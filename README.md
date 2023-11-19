# arch-custom-repo
```
sudo pacman-key --init
sudo bash -c 'echo -e "[catRepo]\nSigLevel = Optional TrustAll\nServer = https://github.com/ThePolishCat/arch-custom-repo/raw/main/x86_64/" >> /etc/pacman.conf'
```