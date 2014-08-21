<?php


$p = function()
{
    $this();
};

function test($x, $y)
{
    if( $x == 0 )
    {
        return $x;
    }
    else
    {
        return $y();
    }
}
test(0, $p);
