apt update
apt upgrade
apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip libssl-dev libxml-simple-perl libc++1 libc++-dev python bc filter python3 rsync nano cpio kmod jq

mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir ~/repo

cd ~/repo

git config --global user.email "rpheuts@gmail.com"
git config --global user.name "Robert heuts"

repo init -u https://github.com/microsoft/surface-duo-oss-kernel.manifest -b surfaceduo2/11/2023.501.541
repo sync


./device_build/kernel/kernel-config.sh -c lahaina-gki_defconfig -tb user -p ~/repo
./device_build/kernel/kernel-build.sh -c lahaina-gki_defconfig -tb user -p ~/repo

