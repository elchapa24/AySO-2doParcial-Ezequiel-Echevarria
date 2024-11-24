sudo fdisk /dev/sdc

sudo pvcreate /dev/sdc5 /dev/sdc6
sudo pvcreate /dev/sdc2 /dev/sdc3

sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6

sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L 1G vgDevelopers -n lvDevops
sudo lvcreate -L 0.8G vgDevelopers -n lvDevops

sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo lvcreate -L 1.5G vgAdmin -n lvAdmin
sudo lvcreate -L 1G vgAdmin -n lvAdmin
sudo lvcreate -L 0.8G vgAdmin -n lvAdmin
