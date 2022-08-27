<?php
$data = json_decode(file_get_contents('./package.json'));

if(in_array('use-import',array_keys((array) $data->package))){
    echo 'true';
} else {
    echo 'false';
}