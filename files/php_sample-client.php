<?php

/* 
     AlpineBits 2012-05
     http://www.alpinebits.org/

     PHP code snippet to show message POSTing
     v. 2012-05.1.0

*/

$cu = curl_init("http://localhost:8088/alpinebits/sample-server.php");

curl_setopt($cu, CURLOPT_RETURNTRANSFER,    true);
curl_setopt($cu, CURLOPT_POST,              true);
curl_setopt($cu, CURLOPT_HTTPAUTH,          CURLAUTH_BASIC);
                                            # in production should be CURLPROTO_HTTPS only
curl_setopt($cu, CURLOPT_PROTOCOLS,         CURLPROTO_HTTP | CURLPROTO_HTTPS);
curl_setopt($cu, CURLOPT_USERPWD,           "chris:secret");
    

$data = array(
    "action" => "OTA_HotelAvailNotif",
    "msg"   => file_get_contents("sample-OTA_HotelAvailNotifRQ.xml")
);

curl_setopt($cu, CURLOPT_POSTFIELDS, $data);

$output = curl_exec($cu);
$info = curl_getinfo($cu);
curl_close($cu);

if ($info["http_code"] != 200) {
    echo "oops: got http status code " . $info["http_code"] . "<br>\n";
}

echo "server said:<br>\n";
echo $output;

?>
