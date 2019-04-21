/*myscript.js*/
function emailCheck() {
	window.open("emailCheckForm.jsp",
		    	"emailwin",
		    	"width=500,height=350");
	
	var sx=parseInt(screen.width);
	var sy=parseIne(screen.height);
	var x=(sx/2)+50; 
	var y=(sy/2)-50;
	
	win.moveTo(x,y);
}//emailCheck() end