unset -f cros_post_src_install_openjema_mark_clean_overlay
unset -f cros_pre_src_prepare_openjema_patches

cros_post_src_install_baseboard_rockpi4_hook() {
  exeinto /usr/sbin
  doexe ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/switch_root.sh
}

cros_pre_src_prepare_baseboard_rockpi4_patches() {
  epatch ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/chromeos-install.patch
  epatch ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/chromeos_postinst.patch
  epatch ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/postinst.patch
}
