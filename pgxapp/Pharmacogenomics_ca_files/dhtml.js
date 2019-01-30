navHover = function() {
	var el = document.getElementById("leftcol");
	if ( el == null ) { return; }
	var lis = el.getElementsByTagName("LI");
	if ( lis == null ) { return; }
	for (var i=0; i<lis.length; i++) {
		lis[i].onmouseover=function() {
			this.className+=" iehover";
		}
		lis[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" iehover\\b"), "");
		}
	}
}
if (window.attachEvent) window.attachEvent("onload", navHover);