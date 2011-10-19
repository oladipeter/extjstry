// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var message="A jobb gomb le van tiltva!";

function clickIE()

{if (document.all)
{(message);return false;}}

function clickNS(e) {
if
(document.layers||(document.getElementById&&!document.all))
{
if (e.which==2||e.which==3) {(message);return false;}}}
if (document.layers)
{document.captureEvents(Event.MOUSEDOWN);document.  onmousedown=clickNS;}
else
{document.onmouseup=clickNS;document.oncontextmenu  =clickIE;}

document.oncontextmenu=new Function("return false")


