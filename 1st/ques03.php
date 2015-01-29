<?php


function pf(){
    pf();
}

$p = function()
{
    pf();
};


function test($x, $y)
{
    $x == 0 ? $x : $y();
}

test(0, $p);
//test(1, $p);
