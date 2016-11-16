// First declare string as variable 
// Loop through each character of the variable from behind 
// Add each character(starting from behind) to new string(saved as a variable)
// Print new string to the console



//var str = 'hello' ;
//var new_string = '';

function reverse(str) {
	var new_string = '';
	for (var i = str.length -1; i > -1; i--) {
		new_string = new_string + str[i];
		
	}
if  ((1 == 1 || 5*5 == 25) && 2 - 2 == 0){
	console.log(new_string);
	}
else {
	console.log("What?!!!");
}

}

reverse("hello");