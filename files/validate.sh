#!/bin/bash

#
#     AlpineBits 2012-05
#     http://www.alpinebits.org/
#
#     script to call xmllint to validate the sample files using
#     Relax NG as well as W3C XML Schema files
#
#     xmllint comes standard with Linux and MacOS X and can be
#     downloaded freely for Windows ( http://www.zlatkovic.com/libxml.en.html )
#
#     v. 2012-05.1.0
#

echo
echo "------------------------------------"
echo "validate using Relax NG schema files"
echo "------------------------------------"
echo

xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRQ.rng           sample-FreeRooms-OTA_HotelAvailNotifRQ.xml 
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRS.rng           sample-FreeRooms-OTA_HotelAvailNotifRS-success.xml 
xmllint --noout --relaxng relaxng-FreeRooms-OTA_HotelAvailNotifRS.rng           sample-FreeRooms-OTA_HotelAvailNotifRS-error.xml 
echo
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ReadRQ.rng                  sample-GuestRequests-OTA_ReadRQ.xml
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ResRetrieveRS.rng           sample-GuestRequests-OTA_ResRetrieveRS-book.xml
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ResRetrieveRS.rng           sample-GuestRequests-OTA_ResRetrieveRS-quote.xml
xmllint --noout --relaxng relaxng-GuestRequests-OTA_ResRetrieveRS.rng           sample-GuestRequests-OTA_ResRetrieveRS-empty.xml
echo
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRQ.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRQ.xml
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRQ.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRQ-remove.xml
xmllint --noout --relaxng relaxng-SimplePackages-OTA_HotelRatePlanNotifRS.rng   sample-SimplePackages-OTA_HotelRatePlanNotifRS-success.xml
echo

echo
echo "-----------------------------------"
echo "validate using W3C XML schema files"
echo "-----------------------------------"
echo

echo
xmllint --noout --schema schema-FreeRooms-OTA_HotelAvailNotifRQ.xsd           sample-FreeRooms-OTA_HotelAvailNotifRQ.xml 
xmllint --noout --schema schema-FreeRooms-OTA_HotelAvailNotifRS.xsd           sample-FreeRooms-OTA_HotelAvailNotifRS-success.xml 
xmllint --noout --schema schema-FreeRooms-OTA_HotelAvailNotifRS.xsd           sample-FreeRooms-OTA_HotelAvailNotifRS-error.xml 
echo
xmllint --noout --schema schema-GuestRequests-OTA_ReadRQ.xsd                  sample-GuestRequests-OTA_ReadRQ.xml
xmllint --noout --schema schema-GuestRequests-OTA_ResRetrieveRS.xsd           sample-GuestRequests-OTA_ResRetrieveRS-book.xml
xmllint --noout --schema schema-GuestRequests-OTA_ResRetrieveRS.xsd           sample-GuestRequests-OTA_ResRetrieveRS-quote.xml
xmllint --noout --schema schema-GuestRequests-OTA_ResRetrieveRS.xsd           sample-GuestRequests-OTA_ResRetrieveRS-empty.xml
echo
xmllint --noout --schema schema-SimplePackages-OTA_HotelRatePlanNotifRQ.xsd   sample-SimplePackages-OTA_HotelRatePlanNotifRQ.xml
xmllint --noout --schema schema-SimplePackages-OTA_HotelRatePlanNotifRQ.xsd   sample-SimplePackages-OTA_HotelRatePlanNotifRQ-remove.xml
xmllint --noout --schema schema-SimplePackages-OTA_HotelRatePlanNotifRS.xsd   sample-SimplePackages-OTA_HotelRatePlanNotifRS-success.xml
echo

