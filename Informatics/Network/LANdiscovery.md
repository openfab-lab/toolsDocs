It seems that windows is a funny fellow and some windows10 computers cannot access to local network, for exemple to connect to the NAS.

## Cause:
Microsoft decided to uninstall old smb driver (samba). hahaha, thanks Bill. you're an ass****

## Solution: 

[Windows 10: Network Devices invisible after Windows Update to Build 16299.125](https://www.tenforums.com/network-sharing/101060-network-devices-invisible-after-windows-update-build-16299-125-a-2.html)

> Depending on what SMB version your Netgear router uses (older ones use SMBv1), you need to check your Pro system and make sure SMBv1 is still installed ...   
**Go to Control Panel > Program and Features > Turn Windows Features On or Off > SMB 1.0/CIFS File Sharing Support.**   
Also, Win10 1709 added a SMB 1.0/CIFS Automatic Removal, so you can either uncheck the box or go to Task Scheduler > Microsoft > Windows > SMB and disable the 2 tasks it adds.

> Note: I have an older Netgear WNDR4000 Router and use ReadyShare USB File Sharing. It uses SMBv1 (Server), so I have to have SMBv1 installed, but I only need the Client part.

![image](https://user-images.githubusercontent.com/12049360/41858329-e0b7418e-7899-11e8-9242-16c710569cd6.png)


Faut activer la ligne **SMB1.0 etc...**   

![image](https://user-images.githubusercontent.com/12049360/41859226-0541bad2-789c-11e8-8c72-6bfc495d6298.png)

Et en fait,   
c'est tout. Après redémarage, j'ai pu voir tout les ordis et le NAS connectés sur le réseau local. 
