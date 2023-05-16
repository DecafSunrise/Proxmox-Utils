echo -e "resizepart\nFix\n3\n100%"|sudo parted /dev/sda ---pretend-input-tty
sudo pvresize /dev/sda3
sudo lvextend -r -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv
