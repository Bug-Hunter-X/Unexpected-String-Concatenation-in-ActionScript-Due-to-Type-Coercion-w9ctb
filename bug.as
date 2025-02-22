```actionscript
// Example of a bug caused by incorrect type coercion

var myString:String = "10";
var myNumber:Number = myString;

//This will cause an error because the string is converted to a Number, but then unexpectedly used as a String.
trace(myNumber + 5); //Outputs 15 which is expected.
trace(myNumber + "5"); //Output is 105, unexpected string concatenation instead of addition. 

// Correct way to handle string to number conversion

var myNumber2:Number = Number(myString);
trace(myNumber2 + 5); //Output is 15.
trace(myNumber2 + "5"); //Output is 155. Correct string concatenation
```