* String comparison
  * compare letter by letter (letter's Unicode)
  * compare rules:
   > The algorithm to compare two strings is simple:
   >  1. Compare the first character of both strings.
   >     * If the first character from the first string is greater (or less) than the other string’s, then the first string is greater (or less) than the second. We’re done.
   >     * Otherwise, if both strings’ first characters are the same, compare the second characters the same way.
   >  2. Repeat until the end of either string.
   >  3. If both strings end at the same length, then they are equal. Otherwise, the longer string is greater.
  
  ```js
  console.log('Z' > 'A') //true
  console.log('abe' > 'abc') //true
  console.log('aaa' > 'aa') //true
  console.log('a' > 'A') //true, because unicode of 'a' is larger
  ```
  
* Compare different types
  * When comparing values of different types, JavaScript converts the values to numbers.
  
  ```js
  //string to number
  console.log('2' > 1) //true
  console.log(3 > '2') //true
  console.log('01' == 1) //true
  
  //boolean to number
  console.log(true > 0) // true
  console.log(false == 0) //true
  ```
  
* Strict compare `===` `!==` 
  * A strict equality operator === checks the equality without type conversion.
  
  ```js
  console.log('0' === 0) //false
  console.log(undefined === null) //false
  ```
  
* Special case
  * null vs 0
  
  ```js
  //the rule of comparison and equal check are different
  //comparison convert null to value, which is 0 and compare with 0
  //equal check defines that null and undefined are not equal to anything else. only themselves are equal
  console.log( null > 0 );  // false
  console.log( null == 0 ); // false
  console.log( null >= 0 ); // true
  console.log( null == undefined) // true
  ```
  
  * undefined vs 0
  
  ```js
  //comparison convert null to value, which is NaN and compare with 0
  console.log( undefined > 0 );  // false
  console.log( undefined == 0 ); // false
  console.log( undefined < 0 ); // false
  ```

**Note:**
Don’t use comparisons `>=` `>` `<` `<=` with a variable which may be null/undefined, unless you’re really sure of what you’re doing. 

Reference: [Javascript.info/comparisons](https://javascript.info/comparison)
