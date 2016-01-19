'use strict';

//require('./index.html');
var Elm = require('./Main');

//var elmApp = Elm.embed(Elm.Main, document.getElementById('main'));
var elmApp = Elm.fullscreen(Elm.Main, {initialPath: window.location.pathname});
