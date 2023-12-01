cros_pre_src_prepare_baseboard_rockpi4_patches() {
 eapply -p1 ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/reduce_vm_mem.patch
 eapply -p1 ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/r96_fix_vm_concierge.patch
 eapply -p2 ${BASEBOARD_ROCKPI4_BASHRC_FILESDIR}/add_oom_scores.patch
 }
