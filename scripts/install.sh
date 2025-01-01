UbuntuInstallAppList=(
    "flatpak"
    "neofetch"
)

FlathubInstallAppList=(
    "com.spotify.Client"
    "com.visualstudio.code"
    "io.github.shiftey.Desktop"
    "org.mozilla.firefox"
)

apt full-upgrade

for UbuntuApp in ${UbuntuInstallAppList[@]}
do
    apt install -y $UbuntuApp
done

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

for FlathubApp in ${FlathubInstallAppList[@]}
do
    flatpak install -y flathub $FlathubApp
done
