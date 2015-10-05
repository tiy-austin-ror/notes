var person = {
  name: '',
  setName: function (newName) {
    this.name = newName;
  },
  foods: ['apple', 'pear', 'taco'],
  listFavoriteFoods: function () {
    var printFood = function (food) {
      console.log("I love " + food + "!");
    };
    this.foods.forEach(printFood);
  }
};

console.log("Person's name is " + person.name);
person.setName('Justin');
// You can also use subscript operator look up for objects -> console.log(person["name"]);
console.log("Person's name is " + person.name);
person.listFavoriteFoods();






var double = function (n) {
  return n * 2;
};
