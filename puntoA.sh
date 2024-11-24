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

sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin
sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
