// Pseudocode a function that take a string as a parameter and reverse the string
//i.e: reverse("hello") should retrun "olleh"
//Function:
	//Enter String
	//Reverse String
		//Loop through letters and outputs the reverse


function reverseStr(word) {

var output = " "
for (var i = word.length - 1; i >= 0; i--) {
	output += word[i]

	}
	return output
}


//Drive Code: 
	//Calls the function 
	//Store the result of the function in a variable
	//Prints the variable if some condition is true (it can be silly like 1 == 1)
reverse_str = reverseStr("Chicken")

if (100 == 100) {
	console.log(reverse_str)
}
