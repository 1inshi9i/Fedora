sudo gedit /etc/dnf/dnf.conf
fastestmirror=true
deltarpm=true
#install commen repositories below

sudo dnf install fedora-workstation-repositories -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager --set-enabled rpmfusion-nonfree-nvidia-driver
sudo dnf repository-packages rpmfusion-nonfree-nvidia-driver info

#update Fedora
sudo dnf update -y

1760x990
/etc/X11/xorg.conf
#install commen apps below
sudo dnf install gnome-tweak-tool
sudo dnf install vlc
sudo dnf install VirtualBox

rpm -qa 
#列出所有已经安装的包

dnf remove 包名字
#拆卸一个包

sh -c 'xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * 90 / 100)))'
