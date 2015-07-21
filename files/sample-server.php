<?php

/* 
     AlpineBits 2012-05
     http://www.alpinebits.org/

     PHP code snippet to show programming HTTP basic authentication
     v. 2012-05.1.0

*/

if (!isset($_SERVER['PHP_AUTH_USER'])) {
    header('WWW-Authenticate: Basic realm="AlpineBits demo server"');
    header('HTTP/1.0 401 Authorization Required)');
    echo 'ERROR:no user/pass';
    exit;
}

if ( ! ( isset($_SERVER['PHP_AUTH_USER']) && $_SERVER['PHP_AUTH_USER'] == "chris" ) ||
     ! ( isset($_SERVER['PHP_AUTH_PW'])   && $_SERVER['PHP_AUTH_PW'] == "secret"    )
   ) {
    header('HTTP/1.0 401 Authorization Required');
    echo 'ERROR:wrong user/pass';
    exit;
}

echo "code me";

?>
