<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, GET, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Accept, Content-Type, Access-Control-Allow-Header');
header('Content-type: application/json');
header('Access-Control-Max-Age: 3600');

if ($_SERVER ['REQUEST_METHOD'] === 'OPTIONS') {
    return 0;
}