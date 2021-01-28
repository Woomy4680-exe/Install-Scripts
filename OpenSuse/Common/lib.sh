prepare_opensuse_repos() {
    # Zypper update refreshes repo, do not need to `zypper refresh`
    sudo zypper update -y
}
prepare_opensuse() {
    prepare_opensuse_repos
}
install_cargo() {
    sudo zypper install cargo -y
}
install_kelpdot() {
    cargo install kelpdot # Install Kelpdot to manage dotfiles
}
install_tab() {
    cargo install tab # Install "tab", an easy to use terminal multiplexer
}
install_cargo_packages() {
    install_cargo
    install_kelpdot
    install_tab
}
