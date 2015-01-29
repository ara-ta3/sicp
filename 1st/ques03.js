var p = function(){this();},
    test = function(x, y){ return (x==0) ? x : y();};

test(0, p);

