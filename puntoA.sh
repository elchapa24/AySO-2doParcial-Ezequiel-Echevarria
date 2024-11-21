sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo lvcreate -L 2G -n lyAdmin vgAdmin
sudo lvcreate -L 1G -n lvDevelopers vgDevelopers
sudo lvcreate -L 1G -n lvTesters vgDevelopers
sudo lvcreate -L 1G -n lvDevops vgDevelopers
