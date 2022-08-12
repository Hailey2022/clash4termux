download_clash(){
    mkdir c4t
    arch=$(uname -m)
    if [ "$arch" = "aarch64"]; then
        echo "architecture is aarch64"
        curl -o ./c4t/clash --retry 5 -L https://raw.githubusercontent.com/Hailey2022/clash4termux/main/clash
        chmod +x ./c4t/clash
    else
        echo "unsupported architecture"
        exit 1
    fi
}

check_root(){
    user=$(whoami)
    if [ "$user" = "root" ]; then
        echo "You are root"
    else
        echo "You are not root"
        exit 1
    fi
}

check_root
download_clash
