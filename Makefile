# robotpkg wip
#

COMMENT=	WIP packages

SUBDIR+=	blender
SUBDIR+=	python3
SUBDIR+=        hrp2-builder hpp-corbaserver hpp-model kpp-interfacewalk hpp-walkplanner hpp-corbaserver hpp-openhrp hpp-model hrp2-14 jrl-dynamics jrl-mal jrl-walkgen jrl-interface-dynamics hrp2-dynamics stackoftasks hpp-core
SUBDIR+=	kineo-pp hpp-kwsio hpp-kwsplus
SUBDIR+=	hpp-gik hpp-hik hpp-localstepper

include ../mk/robotpkg.subdir.mk
