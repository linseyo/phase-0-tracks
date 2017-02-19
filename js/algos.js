// Release 0: Find the Longest Phrase
// Input: array of words or phrases
var word_array = ["house", "chicken", "egg", "airplane"]
// // Function will take in the array of phrases/words
// 	// determine from those lengths which is the longest
function wordlengths(arr) {
	var longest_word = ""
// // Iterate through the array and determine the length of each word/phrase in the array
	for (var i = 0; i < arr.length; i++) {
		if (arr[i].length > longest_word.length ) {
			longest_word = arr[i]
		}
		
	} 
	console.log(longest_word)
}
// // Output: the longest word or phrase in the array


/////////////////////////////////////////

//Release 1: Find a Key-Value Match
//Input: Key-Value Pair Objects
var set1 = {name: "John", age: 23}
var set2 = {name: "Jack", age: 34}
var set3 = {name: "John", age: 55}
var set4 = {name: "Bill", age: 34}
			// Test for various keys-value matches
//Function will take 2 objects
function matchpair(var1, var2) {
// Check if objects share at least one key-value pairs
//Iterate through objects to find a match:
for (var i in var1) {
	// if (var1 == var2) {
	// 	console.log("true");
	// 	return true;
	// }
		// This Conditional statement returns TRUE for all...
	// if (var1[0] === var2[0] || var1[1] === var2[1]) {
		// This conditional statement will return FALSE for all...
	if (var1[i] == var2[i]) {
		console.log("true");
	// //return true for a match
		return true;
	}
	else {
		console.log("false")
	// //Otherwise return false
		return false;
	}
	}
}

////////////////////////////////////////
//Release 2: Generate Random Test Data
//Input: an integer for length
//function should: take in integer
var randomword = function wordgenerator(num) {
//use alphabet to pull letters from to build word
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
// use empty string to store word
	var word = "";
	word_storage = []
// push word into the empty array
	for (var w = 0; w < Math.floor((Math.random() * 10) + 1); w++) {
		word += alphabet.char[w]
	}
	return word;
}

//Words should be of varying length
//Builds an array of the words made 
//Returns the array 

//EXAMPLE:
	//Input 3 --> Array of 3 random words




/////DRIVER CODE:
wordlengths(word_array)


matchpair(set1, set3)
matchpair(set2, set4)
matchpair(set1, set4)

//does the following 10 times: 
	//generate an array
	//prints array
	//feeds array to wordslengths function
	//prints results

console.log(randomword(3))
