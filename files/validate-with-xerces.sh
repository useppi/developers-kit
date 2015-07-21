#!/bin/bash

#
#     AlpineBits 2013-04 
#     http://www.alpinebits.org/
#
#     script to call xerces2-j to validate the sample files using
#     W3C XML Schema files
#
#     xerces2-j can be downloaded from http://xerces.apache.org/mirrors.cgi#binary
#
#     edit this script to have INSTALL_DIR point to the unzipped xerces2-j distribution
#
#     changelog:
#     v. 2013-04 1.0 - polished for 2013-04 release
#     v. 2013-dev    - introduced, so we have a another validation test
#

INSTALL_DIR=/opt/xerces-2_11_0
#           ^^^^^^^^^^^^^^^^^^ your Xerces installation!

if [ ! -d "$INSTALL_DIR" ]; then
    echo "oops: INSTALL_DIR '$INSTALL_DIR' -> no such directory - please edit the script"
    exit 1
fi

CLASSPATH=.
for JAR in $INSTALL_DIR/*jar; do
    CLASSPATH=$CLASSPATH:$JAR
done
export CLASSPATH
CMD="java jaxp.SourceValidator"

   BLUE="\033[34m"
    RED="\033[31m"
  GREEN="\033[32m"
 YELLOW="\033[33m"
MAGENTA="\033[35m"
  BLACK="\033[30m"
  WHITE="\033[37m"

echo
echo    "        -------------------------------------------------"
echo -e "        validate with ${RED}xerces2-j$BLACK using W3C XML schema file"
echo    "        -------------------------------------------------"
echo

echo
echo -e "        $BLUE*** FreeRooms ***$BLACK"
echo
$CMD -a schema-common.xsd -i sample-FreeRooms-OTA_HotelAvailNotifRQ.xml 
$CMD -a schema-common.xsd -i sample-FreeRooms-OTA_HotelAvailNotifRQ-delta.xml
echo
$CMD -a schema-common.xsd -i sample-FreeRooms-OTA_HotelAvailNotifRS-success.xml 
$CMD -a schema-common.xsd -i sample-FreeRooms-OTA_HotelAvailNotifRS-warning.xml 
$CMD -a schema-common.xsd -i sample-FreeRooms-OTA_HotelAvailNotifRS-error.xml 

echo
echo -e "        $GREEN*** GuestRequests ***$BLACK"
echo

$CMD -a schema-common.xsd -i sample-GuestRequests-OTA_ReadRQ.xml
echo
$CMD -a schema-common.xsd -i sample-GuestRequests-OTA_ResRetrieveRS-book.xml
$CMD -a schema-common.xsd -i sample-GuestRequests-OTA_ResRetrieveRS-quote.xml
$CMD -a schema-common.xsd -i sample-GuestRequests-OTA_ResRetrieveRS-empty.xml

echo
echo -e "        $YELLOW*** SimplePackages ***$BLACK"
echo

$CMD -a schema-common.xsd -i sample-SimplePackages-OTA_HotelRatePlanNotifRQ.xml
$CMD -a schema-common.xsd -i sample-SimplePackages-OTA_HotelRatePlanNotifRQ-remove.xml
echo
$CMD -a schema-common.xsd -i sample-SimplePackages-OTA_HotelRatePlanNotifRS-success.xml
$CMD -a schema-common.xsd -i sample-SimplePackages-OTA_HotelRatePlanNotifRS-warning.xml
$CMD -a schema-common.xsd -i sample-SimplePackages-OTA_HotelRatePlanNotifRS-error.xml
echo
