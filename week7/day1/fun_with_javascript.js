var my_name; /* Hoisting! */
var my_age;
var my_func;


my_name = "Justin"; /* Automatic semicolon insertion */
my_func = function () {
   var foobar;

   foobar = 8;

   var fizzbuzz = "fizzBuzzzzz";
};

/* Read Javascript The Good Parts */

var fruits = [
    'apple',
    'banananana',
    'strawberry',
    'pineapple',
];

console.log(fruits[0]); // console.log is js's version of 'puts'


/* Looping over an array in JS */

for (var i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}

var i = 0;
while (i < fruits.length) {
    console.log(fruits[i]);
    i += 1;
}

/* ES5 Style Looping */
fruits.forEach(function (fruit) {
    console.log(fruit);
});

/* ES6 Style Looping (Don't use this without something like babel setup; Too new and fancy) */
fruits.forEach(fruit => console.log(fruit));



console.log("--- Using Map ---");

var loudFruit = fruits.map(function (fruit) {
    return fruit.toUpperCase();
});

loudFruit.forEach(function (fruit) {
    console.log(fruit);
});


console.log("--- Passing Named Functions ---");

var upcase = function (str) {
    return str.toUpperCase();
};

var print = function (obj) { console.log(obj); };

console.log(upcase('hello world'));

var otherLoudFruit = fruits.map(upcase);

otherLoudFruit.forEach(print);

fruits.map(upcase).forEach(print);



console.log("---- Referential Transparency (or 'Pure Functions') in Javascript ----");
/* A function is considered referentially transparent if its output is a direct correlation to its inputs */
/* Which basically means, given the same input I should always get the same output. */

var double = function (n) {
    return n * 2;
};

var doTwice = function (fn, n) {
    return fn(fn(n));
};

console.log(doTwice(double, 4))




console.log("---- Objects! (Hashes basically) ----");

var ta = {
    "age": 99,
    "name": "Dane",
    "show": "pokemon",
    "team": "red",
    "drink": "tea",
    "talk": function () {
        console.log("So the thing about " + this.show + " is that " + this.team + " is the best team.");
    }
};

console.log(ta["age"]);
console.log(ta.age);

console.log(ta["zipcode"]); //Any key that is not found will return 'undefined';
console.log(ta.zipcode);

ta.talk(); // Functions need parens on the end to be called.
ta.talk; // This will not call the function.



console.log("---- FOO in Javascript (Fake Object Oriented) ----");

var Person = function (name, age, show, team) {
    return {
        "name": name,
        "age": age,
        "show": show,
        "team": team,
        "talk": function () {
            console.log("So the thing about " + this.show + " is that " + this.team + " is the best.");
        }
    };
};


var me = Person("justin", 18, "Adventure Time", "PB");

var jess = Person("Jess", 1111111, "Javascript", "functions");

me.talk();
jess.talk();

console.log(me.age);

switch (me.age) {
    case 18:
        console.log("Yes, you are 18");
        break;
    case 21:
        console.log("Yes, you are 21");
        break;
    case 22:
        console.log("Yes you are 22");
        break;
    default:
        console.log("You are some type of age");
}
