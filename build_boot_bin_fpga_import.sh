cp /projects/gitrepos/avnet/avnet_hdl/hdl/projects/pz7030_fmc2_base_2022_1/pz7030_fmc2_base.runs/impl_1/pz7030_fmc2_base_wrapper.bit ./import_bitfile/system.bit
md5sum ./import_bitfile/system.bit
petalinux-package --boot --fsbl ./import_bitfile/zynq_fsbl.elf  --fpga ./import_bitfile/system.bit  --u-boot --force
echo "Copying BOOT.BIN file.."
cp ./images/linux/BOOT.BIN ./import_bitfile/BOOT.BIN
#petalinux-package --boot --fsbl ./images/linux/${FSBL_PROJECT_NAME}.elf --fpga ./images/linux/system.bit --u-boot --force

#/home/versal/picozed_transfer
scp ./images/linux/BOOT.BIN versal@10.118.183.51:/home/versal/picozed_transfer

#scp versal@versal:/p /path/to/local/directory/

