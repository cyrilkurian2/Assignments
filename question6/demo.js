const prompt = require("prompt-sync")();

const year = prompt("Enter year ");
let isLeap = false;

if(year % 400 == 0){
    isLeap = true
}
if((year % 100) != 0){
    if((year % 4) == 0){
        isLeap = true
    }
}

if(isLeap)
{
    console.log(`${year} is a Leap Year`)
}
else {
    console.log(`${year} is a not Leap Year`)
}