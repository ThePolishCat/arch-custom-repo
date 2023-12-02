# arch-custom-repo
```
sudo pacman-key --init
sudo pacman-key --recv-keys 2007FD1D74C35228EE40D0CCB91C66EF5E2EE34D
sudo pacman-key --lsign-key 2007FD1D74C35228EE40D0CCB91C66EF5E2EE34D


sudo bash -c 'echo -e "[catRepo]\nSigLevel = Optional TrustAll\nServer = https://github.com/ThePolishCat/arch-custom-repo/raw/main/x86_64/" >> /etc/pacman.conf'
```
