/*:
 ## A Shortcut
 
 You saw how to use the current value of a variable as part of updating to a new value:
 */
// Value is initially zero
var score = 0

// Take the current value of `score`, add 2, assign the result to `score` as its new value
score += 2
/*:
 This type of operation happens often enough that Swift has a special operator `+=` which is a shorthand that combines addition (`+`) and assignment (`=`) into one combined operation.

The following line of code:
 
`score = score + 2`
 
has the same effect as:
 
`score += 2`
 
- experiment: Replace the line of code `score = score + 2` above using `+=` instead. Note that the result in the results bar is the same. Add a few more lines of code that add more points using the `+=` operator.

 #### Compound Assignment
 The formal name for this kind of operator is a _compound assignment_ operator. The `+=` operator not only works for numbers, but anywhere you can use the addition operator `+`.
 
 For example, this also works with strings:
*/
var greeting = ""
greeting += "Hello"
greeting += " "
greeting += "World"
//: - experiment: Try building up the statement “Compound assignment is useful” using compound assignment and the following constants. The first part of the statement is done for you:
var word1 = "Compound"
var word2 = "assignment"
var word3 = "is"
var word4 = "useful"
var space = " "
word1 += space + word2 + space + word3 + space + word4
var statement = ""
statement += word1
print(statement)





//: [Previous](@previous)  |  page 5 of 13  |  [Next: Confusing Changes](@next)
