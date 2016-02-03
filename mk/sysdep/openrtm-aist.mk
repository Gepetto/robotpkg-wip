#
# Copyright (c) 2016 LAAS/CNRS
# All rights reserved.
#
# Permission to use, copy, modify, and distribute this software for any purpose
# with or without   fee is hereby granted, provided   that the above  copyright
# notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL  IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR  BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER RESULTING  FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION,   ARISING OUT OF OR IN    CONNECTION WITH THE USE   OR
# PERFORMANCE OF THIS SOFTWARE.
#
#                                            Olivier Stasse on Wed Feb 3 2016
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OPENRTM_AIST_DEPEND_MK:=	${OPENRTM_AIST_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		openrtm-aist
endif

ifeq (+,$(OPENRTM_AIST_DEPEND_MK)) # ---------------------------------------------

PREFER.openrtm-aist?=		system

DEPEND_USE+=		openrtm-aist

DEPEND_ABI.openrtm-aist?=	openrtm-aist>=1.0.0

SYSTEM_SEARCH.openrtm-aist=	\
	'include/rtm/RTObject.h'\
	'lib/pkgconfig/openrtm-aist.pc:/Version/s/[^.0-9]//gp'\
	'lib/libRTC.so'

SYSTEM_PKG.Ubuntu.openrtm-aist=	openrtm-aist-grx

endif # OPENRTM_AIST_DEPEND_MK --------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
