'use strict';

//require('./index.html');
var Elm = require('./Main');

require('./main.css');

//var elmApp = Elm.embed(Elm.Main, document.getElementById('main'));
var elmApp = Elm.embed(Elm.Main, document.getElementById('app'), {initialPath: window.location.pathname});
//var elmApp = Elm.fullscreen(Elm.Main, {initialPath: window.location.pathname});
