function longestword(array){
	var bigger = [];
	for (var l = 0; l < array.length; l++){
		bigger.push([]);
	}
	for (var i = 0; i < array.length; i++){
		for (var k = 0; k < array.length; k++){
		
			if (array[i].length >= array[k].length){
				bigger[i].push(true);
			}
			else{
				bigger[i].push(false);
			}
			
		}	
	}
	
	for (var m = 0; m < array.length; m++){
		var counter = 0;
		for (var j = 0; j < array.length; j++){
			if (bigger[m][j] == true){
				counter = counter + 1;

			}	
		}
		if (counter == array.length){

			return (array[m]);

		} 		
	}

	//console.log(bigger);
}

///////////////////////////////////////////////////////////////////////////

function comparingobjects(object_1, object_2){
	var keys_1 = Object.keys(object_1);
	var keys_2 = Object.keys(object_2);
	var length_1 = keys_1.length;	
	var length_2 = keys_2.length;
	var truth = [];
	//console.log(keys_2);
	//console.log(keys_1);
	//console.log(keys_1[1]);
	//console.log(keys_2[1]);
	//console.log(object_1[keys_1[1]]);
	//console.log(object_2[keys_2[1]]);

	for (var i = 0; i < length_2;i++){
		for (var k = 0; k < length_1;k++)
			if (keys_1[i] == keys_2[k]){
				if(object_1[keys_1[i]] == object_2[keys_2[k]]){
					truth.push(true);
				}
			}
	}
	//console.log(truth);
	if (truth.includes(true) == true){
		return true;
	}
	else {
		return false;
	}
}

//var steve = {name: "Steven", age: 54};
//var mykeys = Object.keys(steve);
//console.log(mykeys);


function randomstrings(amount_of_words){
	var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
	var strings = [];
	
	
	
		//console.log(random_1);
		//console.log(random_2);
	for (var n = 1; n <= amount_of_words; n++){
			var string = ""
				random_1 = Math.round(random_1);
			var random_1 = Math.random() * (10 - 1)+ 1;

			for (var k = 0; k < random_1; k++){
				var random_2 = Math.random() * (25 - 0) + 0;
				random_2 = Math.round(random_2);
				string = string + alphabet[random_2];
				
			}

			
			
		
					strings.push(string);
	}
	return strings;
}








console.log(longestword(["abc","bc", "cd"]));
console.log(longestword(["abcdefg","bafkiafjsafujasfhu", "cd", "hello world"]));
console.log(comparingobjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(comparingobjects({name: "Steven", age: 54}, {name: "Tamir", age: 64}));

console.log(longestword(randomstrings(5)));
console.log(longestword(randomstrings(3)));
console.log(longestword(randomstrings(2)));
console.log(longestword(randomstrings(4)));
console.log(longestword(randomstrings(4)));
console.log(longestword(randomstrings(7)));
console.log(longestword(randomstrings(14)));
console.log(longestword(randomstrings(27)));
console.log(longestword(randomstrings(13)));
console.log(longestword(randomstrings(31)));

