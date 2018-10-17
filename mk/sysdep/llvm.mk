# robotpkg wip/sysdep/llvm.mk
# Created:			Guilhem Saurel on Wed, 17 Oct 2018
#
DEPEND_DEPTH:=	${DEPEND_DEPTH}+
LLVM_DEPEND_MK:=	${LLVM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=	llvm
endif

ifeq (+,$(LLVM_DEPEND_MK)) # ------------------------------------------------

PREFER.llvm?=	system
DEPEND_USE+=	llvm
DEPEND_ABI.llvm?=	llvm>=3.8.0

SYSTEM_SEARCH.llvm=	\
    'bin/llvm-config:p:% --version'

endif # LLVM_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
