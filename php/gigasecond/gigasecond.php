<?php

function from(DateTimeImmutable $original) : DateTimeImmutable
{
    $addgs = $original->modify('1000000000 sec');
    return $addgs;
}
