Logical operators
* OR `||` - finds the first truthy value
  > * Evaluates operands from left to right.
  > * For each operand, converts it to boolean. **If the result is true, stops and returns the original value** of that operand.
  > * If all operands have been evaluated (i.e. all were false), returns the last operand.
  
  In other words, a chain of OR `||` returns the first truthy value or the last one if no truthy value is found.
  ```js
  console.log(1 || 2 || 3) //1, return first truthy value
  console.log(0 || undefined || null) //null, return last value if no truthy value at all
  ```
* AND `&&` - finds the first falsy value
  > * Evaluates operands from left to right.
  > * For each operand, converts it to a boolean. **If the result is false, stops and returns the original value** of that operand.
  > * If all operands have been evaluated (i.e. all were truthy), returns the last operand.
  
  In other words, AND returns the first falsy value or the last value if none were found.
  ```js
  console.log(1 && 0 && 2) // 0, return first falsy value 
  console.log(1 && 2 && 3) // 3, return last value if no falsy value at all
  ```
  
  The precedence of AND `&&` operator is higher than OR `||`
  ```js
  1 && 2 || 3 && 4 //2, should be (1 && 2) || (3 && 4)
  ```
* NOT `!`
  > * Converts the operand to boolean type: true/false.
  > * Returns the inverse value.
  
  ```js
  console.log(!0) // true
  ```
  ```js
  // dounble `!!` is sometimes used for converting value to boolean
  console.log(!!'test') // true
  ```
  
  The precedence of NOT `!` is the highest of all logical operators, so it always executes first, before `&&` or `||`.
  
Reference: [javascript.info/logical-operators](https://javascript.info/logical-operators)
