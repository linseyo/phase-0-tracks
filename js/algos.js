// Release 0: Find the Longest Phrase
// Input: array of words or phrases
// var word_array = ["house", "chicken", "egg", "airplane"]
// // Function will take in the array of phrases/words
// 	// determine from those lengths which is the longest
// function wordlengths(arr) {
// 	var longest_word = ""
// 	var longest_length = 0
// // Iterate through the array and determine the length of each word/phrase in the array
// 	for (var i = 0; i < arr.length; i++) {
// 		if (arr[i].length > length ) {
// 			longest_length = arr[i].length;
// 			longest_word = arr[i]
// 		}
		
// 	} 
// 	console.log(longest_word)
// }
// // Output: the longest word or phrase in the array
// wordlengths(word_array);

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
	if (var1[0] == var2[0] || var1[1] == var2[1]) {
		// console.log("true");
		return true;
		
	}
	else {
		// console.log("false")
		return false;
		
	}
}

matchpair(set1, set3)
//Check if objects share at least one key-value pair
//return true for a match
//Otherwise return false


////////////////////////////////////////
//Release 2: Generate Random Test Data
//Input: an integer for length
//Builds an array
//Returns an array of strings based on the integer length




