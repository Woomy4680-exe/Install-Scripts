#! /bin/bash
#A basic fedora install script 
install_rpm_fusion(){ #Install free RPM fusion repo (nonfree later)
    yes y | dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
}
install_nonfree_repos(){
    yes y | dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    
}
install_node() {
    yes y | dnf install gcc-c++ cairo-devel pango-devel libjpeg-turbo-devel giflib-devel nodejs libtool wget curl
}
install_modules() {
    npm install --global yarn typescript pm2
}
install_utils() {
    yes y | dnf install htop nmon nano vim make automake zsh
}
install_zram() {
    yes y | dnf install zram
    systemctl enable zram-swap.service
    systemctl start zram-swap.service #You can config ZRAM later
}
main() { 
    install_rpm_fusion
    install_nonfree_repos
    install_node
    install_modules
    install_zram
    install_utils 
}
main