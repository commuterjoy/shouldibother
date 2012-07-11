Evaluates a user-agent's client-side capabilities using Modernizer and
displays the support information and a few other useful properties in an
HTML document.

Because we might want to record this information for posterity the
client logs the same support information on the server and produces a
simple report.

In this sense, shouldibother is a bit like [caniuse](http://caniuse.com).

Usage
-----

    bundle
    rackup
    open http://localhost:9292/

Optionally you can expose this to the world using proxylocal. 

    proxylocal 9292

[Visiting the application](http://localhost:9292/) will generate an entry in the Sinatra logs, Eg.

    Modernizr.fontface       true
    Modernizr.audio          true
    Modernizr.video          true
    Modernizr.history        true
    Modernizr.svg            true
    Modernizr.canvas         true
    Modernizr.geolocation    true
    Modernizr.localstorage   true
    Modernizr.indexeddb      true
    Modernizr.touch          false
    Modernizr.webgl          true
    Modernizr.cssanimations  true
    window.innerWidth        400
    window.innerHeight       178
    window.devicePixelRatio  1
    navigator.battery    
    screen.colorDepth        24
    navigator.language       en-US
    window.performance       [object Performance]
    window.msPerformance     
    window.webkitPerformance     
    window.mozPerformance 

