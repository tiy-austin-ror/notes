// var name = "Justin";
//
// console.log(name);
//
// /* Arrays in JS look like they do in Ruby */
// var foods = [
//   "apple",
//   "sushi",
//   "tacos",
//   "candy"
// ];
//
// // If statements
// if (foods.length > 3) {
//   console.log("I have " + foods.length + " foods");
// } else {
//   console.log("Not enough food");
// }
//
// /* Defining a JS 'Object' like a ruby Hash
//   - A JS Object is a Key/Value store.
//   - Like a ruby hash, a JS obj can hold any other js type.
// */
// var person = {
//   name: "Justin",
//   age: 99,
//   activity: "DS3"
// };
//
// console.log(person);
// // console.debug(person);// Does not work in Node
// // console.error(person);
// console.assert(person == person, "Should be equal");


/* In javascript we use functions */
// We also use camelCase for our names
var sayHello = function (name) {
  if (name === undefined) {
    console.error("Name was not given");
  } else {
    console.log("Hello " + name + "!");
  }
};

// In JS, you must use () after the function name to call it.
// Otherwise you are just asking for the fn itself.
sayHello // <- This is a reference to the fn.
sayHello() // <- This is 'calling' the function.


var addTwo = function (n) {
  return n + 2;
};

console.log(addTwo(5));


var double = function (n) { return n * 2; };
var square = function (n) { return n * n; };

console.log(square(double(2)));

var squareDouble = function (n) {
  return square(double(n));
};

console.log(squareDouble(2));

var doBoth = function (fnA, fnB, n) {
  return fnA(fnB(n));
}

console.log(doBoth(square, double, 2));
console.log(doBoth(square, square, 2));
console.log(doBoth(double, double, 2));


//We use Objects in js to fake classes;

var aaron = {
  name: "Aaron",
  title: "Instructor",
  favoriteFood: "Nutella",
  favoriteLanguage: "Js",
  teach: function () {
    console.log('javasscripts javascripts yavascriptz');
  },
  describe: function () {
    console.log("My name is " + this.name);
  }
};

aaron.teach();
aaron.describe();

var Person = function (name, title, food, lang) {
  return {
    name: name,
    title: title,
    favoriteFood: food,
    favoriteLanguage: lang,
    describe: function () {
      console.log("My name is " + this.name);
      console.log("I am a " + this.title);
      console.log("My fav food is totes " + this.favoriteFood);
    }
  };
}

var Instructor = function (name, food, lang) {
  var person = Person(name, 'Instructor', food, lang);
  person['teach'] = function () {
    console.log(lang + " " + lang + " " + lang + "!");
  }
  return person;
}

// var me = Person('justin', 'Instructor', 'sushi', 'Ruby');
// console.log(Person);
// console.log(me);
var me = Instructor('Justin', 'Sushi', "ruby");
me.describe();
me.teach();

// aaron.teachRuby(); <- Will 'throw' an error

// Does not work in Node, but works great in the browser
// console.table([aaron, me, { foo: 'bar'}]);

//This is how we iterate in JS
[me, aaron].forEach(function (person) {
  console.log(person.name);
});
/*
You can think of the above code as the ruby code below
[me, aaron].each do |person|
  puts person.name
end
*/
// This is how we do a loop in JS
for (var i = 0; i < 100; i++) {
  console.log(i);
}


["1", "2", "3", "10", "25", '40'].forEach(function (numStr) {
  console.log(parseInt(numStr));
});

console.log([1, 2, 3, 4].map(double));

console.log('obj, index, full array');
[1, 2, 3, 4].forEach(console.log);
