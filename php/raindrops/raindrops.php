<?php
function raindrops($n)
{
    $o='';
    if ($n%3 == 0) {
        $o = $o."Pling";
    }
    if ($n%5 == 0) {
        $o = $o."Plang";
    }
    if ($n%7 == 0) {
        $o = $o."Plong";
    }
    if ($o == '') {
        return strval($n);
    } else {
        return $o;
    }
}
