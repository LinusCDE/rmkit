# run with wget -O- https://raw.githubusercontent.com/rmkit-dev/rmkit/master/scripts/run/install_harmony.sh -q | bash -

killall remux.exe
killall harmony.exe
rm harmony-release.zip
wget https://github.com/rmkit-dev/rmkit/releases/download/v0.0.2/release.zip -O harmony-release.zip
yes | unzip harmony-release.zip

cp /home/root/apps/remux.service /etc/systemd/system/remux.service
systemctl enable --now remux
