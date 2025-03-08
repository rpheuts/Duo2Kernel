docker cp a2:/root//repo/kernel/ship_prebuilt/primary_kernel/arch/arm64/boot/Image boot.img-kernel

python3 unpack.py --boot_img boot.img --out test

./mkbootimg --kernel boot.img-kernel --ramdisk boot.img-ramdisk --os_version 11.0.0 --os_patch_level 2024-10 --pagesize 4096 --header_version 3 -o test.bin
