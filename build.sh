#!/bin/sh
# Build openempi .deb
MAINTAINER="Ryan Yates"
NAME="dhis2"
VERSION="2.20-1"
DEPENDS="postgresql,tomcat7,dhis2-tools,libtcnative-1,makepasswd,unzip"
URL="http://www.dhis2.org"
DESCRIPTION="Web-based open-source information system"
## Requires fpm to be installed
command -v fpm >/dev/null 2>&1 || { echo "fpm not found, please install fpm.  Aborting." >&2; exit 1; }

fpm -t deb\
    -s empty\
    -n $NAME\
    -m "$MAINTAINER"\
    -v $VERSION\
    -d $DEPENDS\
    --url $URL\
    --description "$DESCRIPTION"\
    --after-install debian/postinst\
    --before-install debian/preinst\
    --after-remove debian/postrm\
    --before-remove debian/prerm\
