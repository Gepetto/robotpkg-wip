# robotpkg wip/
# Created:			Olivier Stasse on Thu 2 Jan 2020
#
ifndef _ubuntudistro_mk
  _ubuntudistro_mk:=defined
  _ubuntudistro:=$(shell ${SHELL} ${ROBOTPKG_DIR}/wip/sysdep/ubuntu-distro.sh)
  export UBUNTUDISTRO:=  $(word 1,${_ubuntudistro})
endif # UBUNTU_DISTRO_ROS_FLAVOR
