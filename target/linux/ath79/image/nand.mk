define Device/glinet_gl-ar300m-nand
  ATH_SOC := qca9531
  DEVICE_TITLE := GL-AR300M (NAND)
  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
  KERNEL_SIZE := 2048k
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  VID_HDR_OFFSET := 512
  IMAGES += factory.ubi
  IMAGE/sysupgrade.bin := sysupgrade-tar
  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
endef
#TARGET_DEVICES += glinet_gl-ar300m-nand

define Device/glinet_gl-e750
  ATH_SOC := qca9531
  DEVICE_TITLE := GL-E750
  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport PCI_SUPPORT
  KERNEL_SIZE := 2048k
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  VID_HDR_OFFSET := 2048
  IMAGES += factory.ubi
  IMAGE/sysupgrade.bin := sysupgrade-tar
  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
endef
TARGET_DEVICES += glinet_gl-e750
