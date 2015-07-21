#!/bin/bash

#
#     AlpineBits 2013-04 
#     http://www.alpinebits.org/
#
#     script to call xmllint to validate the sample files using
#     Relax NG as well as W3C XML Schema
#
#     xmllint comes standard with Linux and MacOS X and can be
#     downloaded freely for Windows ( http://www.zlatkovic.com/libxml.en.html )
#
#     changelog:
#     v. 2013-04 1.0 polished for 2013-04 release
#     v. 2013-dev
#     v. 2012-05 1.0
#


   BLUE="\033[34m"
    RED="\033[31m"
  GREEN="\033[32m"
 YELLOW="\033[33m"
MAGENTA="\033[35m"
  BLACK="\033[30m"
  WHITE="\033[37m"

echo
echo "        --------------------------------------------------"
echo -e "        validate witch ${RED}xmllint$BLACK using Relax NG schema files"
echo "        --------------------------------------------------"
echo

echo
echo -e "        $BLUE*** FreeRooms ***$BLACK"
echo
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRQ.rng           sample-FreeRooms-OTA_HotelAvailNotifRQ.xml 
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRQ.rng           sample-FreeRooms-OTA_HotelAvailNotifRQ-delta.xml
echo
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRS.rng           sample-FreeRooms-OTA_HotelAvailNotifRS-success.xml 
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRS.rng           sample-FreeRooms-OTA_HotelAvailNotifRS-warning.xml 
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRS.rng           sample-FreeRooms-OTA_HotelAvailNotifRS-error.xml 

echo
echo -e "        $GREEN*** GuestRequests ***$BLACK"
echo
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ReadRQ.rng                  sample-GuestRequests-OTA_ReadRQ.xml
echo
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ResRetrieveRS.rng           sample-GuestRequests-OTA_ResRetrieveRS-book.xml
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ResRetrieveRS.rng           sample-GuestRequests-OTA_ResRetrieveRS-quote.xml
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ResRetrieveRS.rng           sample-GuestRequests-OTA_ResRetrieveRS-empty.xml

echo
echo -e "        $YELLOW*** SimplePackages ***$BLACK"
echo
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRQ.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRQ.xml
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRQ.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRQ-remove.xml
echo
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRS.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRS-success.xml
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRS.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRS-warning.xml
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRS.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRS-error.xml
echo

echo
echo "        -----------------------------------------------"
echo -e "        validate with ${RED}xmllint$BLACK using W3C XML schema file"
echo "        -----------------------------------------------"
echo

echo
echo -e "        $BLUE*** FreeRooms ***$BLACK"
echo
xmllint --noout --schema schema-common.xsd sample-FreeRooms-OTA_HotelAvailNotifRQ.xml 
xmllint --noout --schema schema-common.xsd sample-FreeRooms-OTA_HotelAvailNotifRQ-delta.xml
echo
xmllint --noout --schema schema-common.xsd sample-FreeRooms-OTA_HotelAvailNotifRS-success.xml 
xmllint --noout --schema schema-common.xsd sample-FreeRooms-OTA_HotelAvailNotifRS-warning.xml 
xmllint --noout --schema schema-common.xsd sample-FreeRooms-OTA_HotelAvailNotifRS-error.xml 
echo

echo
echo -e "        $GREEN*** GuestRequests ***$BLACK"
echo
xmllint --noout --schema schema-common.xsd sample-GuestRequests-OTA_ReadRQ.xml
echo
xmllint --noout --schema schema-common.xsd sample-GuestRequests-OTA_ResRetrieveRS-book.xml
xmllint --noout --schema schema-common.xsd sample-GuestRequests-OTA_ResRetrieveRS-quote.xml
xmllint --noout --schema schema-common.xsd sample-GuestRequests-OTA_ResRetrieveRS-empty.xml
echo

echo
echo -e "        $YELLOW*** SimplePackages ***$BLACK"
echo
xmllint --noout --schema schema-common.xsd sample-SimplePackages-OTA_HotelRatePlanNotifRQ.xml
xmllint --noout --schema schema-common.xsd sample-SimplePackages-OTA_HotelRatePlanNotifRQ-remove.xml
echo
xmllint --noout --schema schema-common.xsd sample-SimplePackages-OTA_HotelRatePlanNotifRS-success.xml
xmllint --noout --schema schema-common.xsd sample-SimplePackages-OTA_HotelRatePlanNotifRS-warning.xml
xmllint --noout --schema schema-common.xsd sample-SimplePackages-OTA_HotelRatePlanNotifRS-error.xml
echo

