<?php
/**
 *
 */
class Bob
{
    public function respondTo($s)
    {
        $t = trim($s);
        $u = strtoupper($t);
        $c = ($u === $t ? true : false);
        $l = (preg_match("/[A-Z]/i", $t) ? true : false);
        $q = (substr($t, -1) == "?" ? true : false);
        $e = (strlen($t) === 0 ? true : false);
        if ($q and $c and $l) {
            $r = "Calm down, I know what I'm doing!";
        } elseif ($c and $l) {
            $r = "Whoa, chill out!";
        } elseif ($q) {
            $r = "Sure.";
        } elseif ($e) {
            $r = "Fine. Be that way!";
        } else {
            $r = "Whatever.";
        }
        return $r;
    }
}
