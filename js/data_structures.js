//Declare two separate arrays, one of colors and one for names

var colors = ["Purple", "Blue", "Green", "Yellow"];
var names = ["Edd", "Jack", "Aly", "Hannah"];

//Adds another colors to previous color array

colors.push("Orange");
names.push("Ollie");

//Assign colors to Horses
//Key == Names
//Values == Colors
//create a hash that will produce a 1:1 for each array
//two arrays should create an object...?

// for (var j = 0; j < colors.length; j++) {
// }
	 var horse = {};
	for (var i = 0; i < names.length; i++) {
		horse[names[i]] = colors[i]
};


console.log(horse);


//CONSTRUCTOR FUNCTION FOR CAR

function Car(color, year, brand) {

	this.color = color;
	this.year = year;
	this.brand = brand;

	this.horn = function() { console.log("BEEEEEEEP! BEEP!"); };

}

var MyFirstCar = new Car("White", 2012, "Honda");
console.log(MyFirstCar);
MyFirstCar.horn();
console.log("END")

