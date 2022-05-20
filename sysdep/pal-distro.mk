# robotpkg wip/pal-erbium
# Created:			Olivier Stasse on Mon 11 2018
#
ifndef _paldistro_mk
  _paldistro_mk:=defined
  WIP_DIR:=$(shell dirname $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST)))))
  _paldistro:=$(shell ${SHELL} ${WIP_DIR}/sysdep/pal-distro.sh)
  export PALDISTRO:=  $(word 1,${_paldistro})

  ifeq (ferrum,${PREFER.pal-distro})
     ifeq (palferrum,${PALDISTRO})
        ifeq (yes,$(call exists,${ROBOTPKG_DIR}/wip/sysdep/platform/${PALDISTRO}.mk))
	   include ${ROBOTPKG_DIR}/wip/sysdep/platform/${PALDISTRO}.mk
        else
           $(error missing wip/sysdep/platform/${PALDISTRO}.mk)
        endif
     endif
  endif #Ferrum

  ifeq (erbium,${PREFER.pal-distro})
     ifeq (palerbium,${PALDISTRO})
        ifeq (yes,$(call exists,${ROBOTPKG_DIR}/wip/sysdep/platform/${PALDISTRO}.mk))
	   include ${ROBOTPKG_DIR}/wip/sysdep/platform/${PALDISTRO}.mk
        else
           $(error missing wip/sysdep/platform/${PALDISTRO}.mk)
        endif
     endif
  endif  # ERBIUM_ROS_FLAVOR
endif
