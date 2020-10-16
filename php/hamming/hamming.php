<?php

function distance(string $strandA, string $strandB) : int
{
      if (strlen($strandA) !== strlen($strandB) ) {
        throw new InvalidArgumentException("DNA strands must be of equal length.", 1);  
      }
      else {
        $o = 0;
        for($i = 0; $i < strlen($strandA); $i++){
          if (substr($strandA, $i, 1)!==substr($strandB, $i, 1)){
            $o++;
          }
        }
        return $o;
      }
}
