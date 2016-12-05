console.log("Its working");
var disapear_img = function(){
	var photo = document.getElementById("photo-of-uitikon");
	photo.style.display = "none";
}

var buttons = document.getElementsByTagName("button");
var button = buttons[0];

button.addEventListener("click",disapear_img);