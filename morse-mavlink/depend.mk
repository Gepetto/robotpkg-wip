# robotpkg depend.mk for:	simulation/morse-mavlink
# Created:			Arnaud Degroote on Mon,  8 Feb 2016
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MORSE_MAVLINK_DEPEND_MK:=	${MORSE_MAVLINK_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			morse-mavlink
endif

ifeq (+,$(MORSE_MAVLINK_DEPEND_MK)) # -------------------------------------

PREFER.morse-mavlink?=		robotpkg

DEPEND_USE+=		morse-mavlink

DEPEND_ABI.morse-mavlink?=	morse-mavlink>=1.0
DEPEND_DIR.morse-mavlink?=	../../wip/morse-mavlink

SYSTEM_SEARCH.morse-mavlink=\
	lib/python*/{site,dist}-packages/morse/multinode/mavlink.py

include ../../mk/sysdep/python.mk

endif # MORSE_MAVLINK_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
