install_rustup() {
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}
install_nushell () {
    source $HOME/.cargo/env
    cargo install nu --features=stable
}
cargo_to_path() {
    echo "export PATH="$PATH:$HOME/.cargo/bin"" >> ~/.bashrc
}
main() {
    cargo_to_path
   # install_nushell
    install_rustup
}
main
