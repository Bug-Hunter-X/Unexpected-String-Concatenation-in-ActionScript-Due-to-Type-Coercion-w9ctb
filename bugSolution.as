```actionscript
// Correctly handling type coercion

var myString:String = "10";
var myNumber:Number = Number(myString); //Explicit conversion to Number

trace(myNumber + 5); //Outputs 15
trace(myNumber + "5"); //Outputs 155 (Correct string concatenation after numerical addition)

//Another example of handling a potential issue.
var myString2:String = "10abc";
var myNumber2:Number = NaN; // Initialize with NaN

//Attempt conversion and handling of potential NaN result
if (!isNaN(Number(myString2)))
{
  myNumber2 = Number(myString2);
}
else
{
  trace("Invalid number format."); //Handle non-numeric input gracefully
}

trace(myNumber2); //Outputs NaN if conversion fails. Or numeric if successful.
```