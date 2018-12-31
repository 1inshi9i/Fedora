sudo cat /etc/dnf/dnf.conf
fastestmirror=true
deltarpm=true
#install commen repositories below

sudo dnf install fedora-workstation-repositories -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager --set-enabled rpmfusion-nonfree-nvidia-driver
sudo dnf repository-packages rpmfusion-nonfree-nvidia-driver info

#update Fedora
sudo dnf update -y

#install commen apps below
sudo dnf install gnome-tweak-tool
sudo dnf install vlc
sudo dnf install virtualbox
