# robotpkg depend.mk for:	wip/biped-stabilizer
# Created:			Guilhem Saurel on Mon, 22 Aug 2022
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
BIPED_STABILIZER_DEPEND_MK:=	${BIPED_STABILIZER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			biped-stabilizer
endif

ifeq (+,$(BIPED_STABILIZER_DEPEND_MK)) # ------------------------------------------

PREFER.biped-stabilizer?=	robotpkg

SYSTEM_SEARCH.biped-stabilizer=										\
  'include/biped-stabilizer/config.hh:/BIPED_STABILIZER_VERSION /s/[^0-9.]//gp'				\
  'lib/cmake/biped-stabilizer/biped-stabilizerConfigVersion.cmake:/PACKAGE_VERSION/s/[^0-9.]//gp'	\
  'lib/libbiped-stabilizer.so'										\
  'lib/pkgconfig/biped-stabilizer.pc:/Version/s/[^0-9.]//gp'						\
  'share/biped-stabilizer/package.xml:/<version>/s/[^0-9.]//gp'

DEPEND_USE+=			biped-stabilizer

DEPEND_ABI.biped-stabilizer?=	biped-stabilizer>=1.0.0
DEPEND_DIR.biped-stabilizer?=	../../wip/biped-stabilizer

endif # BIPED_STABILIZER_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
