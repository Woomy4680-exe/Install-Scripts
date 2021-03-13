#!/usr/bin/env bash
set -e
prepare_opensuse_repos() {
    # Zypper update refreshes repo, do not need to `zypper refresh`
    sudo zypper update -y
}
prepare_opensuse() {
    prepare_opensuse_repos
}
install_cargo() {
    sudo zypper install -y cargo
}
install_kelpdot() {
    cargo install kelpdot # Install Kelpdot to manage dotfiles
}
install_tab() {
    cargo install tab # Install "tab", an easy to use terminal multiplexer
}
install_starship() {
    cargo install starship # Cross-shell prompt
}
install_cargo_packages() {
    install_cargo
    install_kelpdot
    install_tab
    install_starship
}
install_omz() {
    if [[ -d "${HOME}/.oh-my-zsh" ]]
    then
        rm -rf "${HOME}/.oh-my-zsh"
    fi
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}
# Install dotfiles using KelpDot
install_dots() {
    ROOT=$1
    cd "${ROOT}"
    cd Dotfiles
    ~/.cargo/bin/kelpdot install 
    # If kelp isn't in the path, use its path directly
    #nvim -c "PlugInstall | q | q"
}
