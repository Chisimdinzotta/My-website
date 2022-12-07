let name = 'Mosh';
console.log(name);
console.log(name.length);
const country = 'Nigeria';

let person = {
    name: "Mosh",
    age: 30
};

person.name = "Aisha";
console.log(person.name)

person["name"] = "Peter";
console.log(person.name)

//Array
let colors = ["red", "blue", "yellow"];
colors[3] = "purple";
console.log(colors.length)

//Function
function greet(){
    console.log("Good morning Mr. Jones");
}
greet();

//Function with parameter
function greet(name){
    console.log("Hello " +name);
}
greet("Chuka");

function test(name){
    console.log(`${name} is testing the microphone`);
}
test("Maro")

//Calculating a value with a function
function square(number) {
    return number * number;
}
console.log(square(10));

//alert("It's unreal!");
userName = prompt ("Enter name:");
console.log(userName);

console.warn ("Site may be hacked");
console.error ("An error occurred!");

//Working with substr i.e to get a part of your string and not all
work = ("Aveni LTD");
console.log(work.substr(1))
// it will start from the first index and end at the last index
console.log(work.substr(0,5))
// it will start from the first index and end at before the last index
console.log(work.substring(0,5))
//use split to get a new array of strings
names = ("Ada, Obi, Eric");
console.log(names.split(","));
//the content of the bracket is what will be used as where the items in the list get divided. it can even be space like this " "
//replace a string with another
console.log(names.replace("Ada", "Adaora"));

//How to create arrays

let schools = ["UEL", "Woverhmpton", "Hertfordshire"];
//or
let region = new Array ("London", "Nigeria", "Canada");
//change a value in your array
region[2] = "America"
console.log(region);

//array methods
console.log(region.length);
//to arrange alphabetically
console.log(region.sort());
//remove the last element
region.pop();
console.log(region);
//remove the first element
region.shift()
console.log(region);
//add an element to the last position
region.push("Ghana");
console.log(region);
//add an element to the first/zero index position
region.unshift("South Africa");
console.log(region);
//To check if it's an array
console.log(Array.isArray(region));
//or
console.log (region instanceof Array);
//Create an object
engineer = {
    name: "Chisimdi",
    age: 26,
    skills: ["Writing", "HTML", "CSS", "Python", "JavaScript"],
    origin: {
        country:"Nigeria",
        state: "Abia",
        streetNumber: 33,
    },
};
//To assess the state of the engineer
console.log(engineer.origin.state);
//To assess the skill in the third index
console.log(engineer.skills[3]);
//The object above only has properties. Below is an object that has methods

teacher = {
    firstName: "Wendy",
    surname: "Walters",
    age: 57,
    background: {
        country:"Nigeria",
        state: "Imo",
        streetNumber: 115,
    },
    skills: ["Writing", "flogging", "working", "teaching", "marking"],
    fullName: function () {
    return `${this.firstName} ${this.surname}`;
    },
};
// 'this' in line 123 represents the object. so you are saying in the function, the object's first name. the object's surname
console.log(teacher.fullName());
console.log(this);
