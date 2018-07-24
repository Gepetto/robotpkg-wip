# robotpkg depend.mk for:   mono
# Created:      Quentin Labourey on Wed, 11 July 2018

DEPEND_DEPTH:=      ${DEPEND_DEPTH}+
MONO_DEPEND_MK:=    ${MONO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=        mono
endif

ifeq (+,$(MONO_DEPEND_MK))

PREFER.mono?=           system
DEPEND_USE+=            mono
DEPEND_ABI.mono=        mono>=4.2
SYSTEM_SEARCH.mono=     'lib/mono'

SYSTEM_PKG.Ubuntu.mono= mono-devel

endif

DEPEND_DEPTH:=      ${DEPEND_DEPTH:+=}
