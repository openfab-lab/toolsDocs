# NUC

## Debian install

https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/11.2.0+nonfree/amd64/iso-cd/

* swap 4Gb
* root defensedefumer
* openfab defensedefumer
```
ssh openfab@192.168.1.23
su
cp /home/openfab/.ssh/authorized_keys ~/.ssh/

apt install mc screen net-tools git gcc-avr avr-libc avrdude make minicom

adduser openfab dialout
adduser openfab sudo
```

## Brave
```
apt install apt-transport-https curl
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" > /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser
```

# Gnome shell

https://extensions.gnome.org/

* Install gnome shell integration extension
* Install "Desktop Icons" by rastersoft
* Install "Appindicator and KStatusNotifierItem"

Settings / Privacy / Screen Lock / disable Automatic Screen Lock

Settings / Power / disable blank screen and suspend because after screen suspend the external screen doesn't wake up properly and we had to reboot the NUC when it happens.

# Openbuilds CAM

Go to https://cam.openbuilds.com
* OpenBuilds BlackBox 4X
* Openbuilds Acro 55
* Turn laser on and off: Dynamic Power (M4/M5)
* X-axis 1220
* Y-axis 615
* laser command: S
* power scale: 0 to 1000

Create shortcut:
* cam.openbuilds.com page -> brave menu -> more tools -> create shortcut
* right click on icon -> allow launching

## OpenBuildsCONTROL

Download OpenBuildsCONTROL .deb from cam.openbuilds.com
```
wget http://ftp.fr.debian.org/debian/pool/main/libi/libindicator/libindicator3-7_0.5.0-4_amd64.deb
wget http://ftp.fr.debian.org/debian/pool/main/liba/libappindicator/libappindicator3-1_0.4.92-7_amd64.deb
dpkg -i libindicator3-7_0.5.0-4_amd64.deb 
dpkg -i libappindicator3-1_0.4.92-7_amd64.deb 
dpkg -i OpenBuildsCONTROL_1.0.312_amd64.deb 
```
Create shortcut:
```
cd /home/openfab/Desktop
cp /usr/share/applications/openbuildscontrol.desktop .
chown openfab.openfab openbuildscontrol.desktop 
chmod 755 openbuildscontrol.desktop 
```
right click on icon -> allow launching

Remote access: http://192.168.10.180:3000/jog

To provide a QR code to the mobile jog interface:

`qrencode -o jog.png -d 300 -l H http://192.168.10.180:3000/jog`

This QR was then modified in Gimp to add the Openbuids logo:

![](img/jog.png)


## Laserweb

From https://github.com/LaserWeb/LaserWeb4-Binaries/releases
```
wget https://github.com/LaserWeb/LaserWeb4-Binaries/releases/download/untagged-4818330b6baa8213d4a7/laserweb-builder-v4.0.996-130-x86_64.AppImage
cp laserweb-builder-v4.0.996-130-x86_64.AppImage /usr/local/bin/
chmod 755 /usr/local/bin/laserweb-builder-v4.0.996-130-x86_64.AppImage 
laserweb-builder-v4.0.996-130-x86_64.AppImage
would you like to install shortcuts? yes
```
Create shortcut:
```
cp /home/openfab/.local/share/applications/appimagekit-laserweb-builder.desktop /home/openfab/Desktop/
chown openfab.openfab /home/openfab/Desktop/appimagekit-laserweb-builder.desktop
```
right click on icon -> allow launching

To provide a link to the web interface when laserweb is running:

* in Brave: http://127.0.0.1:8000
* -> add bookmark
* -> brave menu -> more tools -> create shortcut
* right click on icon -> allow launching

Remote access: http://192.168.10.180:8000

**Warning:** Apparently some problems with laserweb closing open SVG paths.


## Lightburn

from https://lightburnsoftware.com/pages/trial-version-try-before-you-buy

```
wget https://github.com/LightBurnSoftware/deployment/releases/download/1.1.03/LightBurn-Linux64-v1.1.03.run`
```
Launch installer as openfab user: `./LightBurn-Linux64-v1.1.03.run`
```
cp /home/openfab/.local/share/applications/lightburn.desktop /home/openfab/Desktop/
chown openfab.openfab /home/openfab/Desktop/lightburn.desktop
```
right click on icon -> allow launching

## Samba

```
apt install samba
```
Add to `/etc/samba/smb.conf`
```
[Public]
   comment = Public share on lasersaur nuc
   path = /home/openfab/Public
   browseable = yes
   read only = no
   guest ok = yes
   force user = openfab
   force group = openfab
   create mask = 0644
```
```
mkdir -p /home/openfab/Public
chown openfab.openfab /home/openfab/Public
systemctl restart smbd
apt install samba-client cifs-utils
```

Remote access example:
```
mkdir -p /mnt/nuc
mount -t cifs -o rw,guest //192.168.10.180/Public /mnt/nuc
...
umount /mnt/nuc
```

## Webdav

Gnome Settings / Sharing / File Sharing

Check port: `netstat -ltpn`

`dav://192.168.10.180`

Remote access example:

Port is dynamically allocated so it must be discovered by Bonjour/Avahi

```
PORT=$(avahi-browse --resolve --terminate -p _webdav._tcp|awk -F';' '$8 == "192.168.10.180"{print $9}')
mkdir -p /mnt/nuc
mount -t davfs -o noexec http://192.168.10.180:$PORT /mnt/nuc
...
umount /mnt/nuc
```

## Webcam

```
apt install guvcview
```
