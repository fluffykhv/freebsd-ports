PORTNAME=	discover
DISTVERSION=	${KDE_PLASMA_VERSION}
PORTREVISION=	2
CATEGORIES=	sysutils kde kde-plasma

PATCH_SITES+=	https://invent.kde.org/plasma/discover/-/commit/
PATCHFILES+=	2b7c8508b407453e6b6f1f5f52c75f1575c5821f.diff:-p1

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Plasma5 package management tools
WWW=		https://www.kde.org/plasma-desktop

# TODO: update packagekit-qt5
#LIB_DEPENDS=	libpackagekit-qt.so:ports-mgmt/packagekit-qt5
LIB_DEPENDS=	libAppStreamQt5.so:devel/appstream-qt \
		libpackagekitqt5.so:ports-mgmt/packagekit-qt
RUN_DEPENDS=	PackageKit>0:ports-mgmt/packagekit

USES=		cmake compiler:c++11-lib cpe desktop-file-utils gettext kde:5 \
		pkgconfig qt:5 tar:xz xorg
USE_KDE=	archive attica auth codecs config configwidgets coreaddons \
		crash dbusaddons i18n idletime jobwidgets kcmutils \
		kdeclarative kio kirigami2 newstuff notifications purpose \
		service widgetsaddons windowsystem \
		ecm:build
USE_QT=		concurrent core dbus declarative gui network webview widgets \
		xml \
		buildtools:build qmake:build testlib:build
USE_XORG=	x11

CPE_VENDOR=	kde

.include <bsd.port.mk>
