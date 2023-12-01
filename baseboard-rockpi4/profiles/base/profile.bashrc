baseboard_rockpi4_stack_bashrc() {
  local cfg cfgd

  cfgd="/mnt/host/source/src/overlays/baseboard-rockpi4/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export BASEBOARD_ROCKPI4_BASHRC_FILESDIR="${cfgd}/files"
}

baseboard_rockpi4_stack_bashrc
