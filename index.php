<?php
$string = '12345678';
$start = 5;


function star_replace($string){
    
    return preg_replace_callback('/[-\w]+/i', function($match){
       $start = 5;
       $arr = str_split($match[0]);
       $len = count($arr)-$start;
       
       for($i=1;$i<$len;$i++) $arr[$i] = $arr[$i] == '-' ? '-' : '*';
       return implode($arr);
    }, $string);

}
Melakukan Perancangan Database

echo star_replace($string);