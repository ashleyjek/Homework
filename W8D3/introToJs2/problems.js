function titleize(array, callback) {

    const newArr = array.map(name => {
        return `Mx. ${name} Jingleheimer Schmidt`
    });
    callback(newArr);

}

function printCallback(array) {
    array.forEach((ele) => {
        console.log(ele);
    });
}

titleize(["Mary", "Brian", "Leo"], printCallback);


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
  };
  
  Elephant.prototype.trumpet = function() {
    console.log(`${this.name} goes 'phrRRRRRRRRRRR!!!!!!!`);
  };

  Elephant.prototype.grow = function() {
    this.height += 12
  };

  Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick)
  };

  Elephant.prototype.play = function() {
    random = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[random]}!`);
  };

  Elephant.paradeHelper = function(elep) {
    console.log(`${elep.name} is trotting by!"`)
  }
  

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

ellie.trumpet();
ellie.grow();
console.log(ellie.height);
ellie.addTrick("running")
console.log(ellie.tricks)
ellie.play();
Elephant.paradeHelper(micah);

function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please"
    console.log(order);

  return function(food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
};

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");
  