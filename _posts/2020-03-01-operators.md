* binary `+`, 
  * if one operand is string, then another will be converted to string and concatenate them
  ```js
  console.log('1' + 2) //'12'
  console.log(2 + '1') //'21'
  ```
  * operations are run from left to right
  ```js
  console.log(2 + 2 + '2') //'42'
  ```
  * only `+` is special, others like `-` `*` work only with numbers and always convert value to number
  ```js
  console.log('2' - 1) //1
  console.log('2' * '2') //4
  ```
* unary `+` = Number(...)
  * If the value is not a number, it will convert it to number, otherwise did nothing
  ```js
  console.log(+'123') //123
  console.log(+'') //0
  console.log(+true) //1
  ```
  * unary `+` applied to values before the binary ones [(Operator Precedence)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence)
  ```js
  console.log(+'1' + +'2') //3
  ```
* Assignment `=`
  * low priority 
  * can chain assignments, Chained assignments evaluate from right to left.
  ```js
  a = b = c = 2 + 2;
  console.log(a) //4
  console.log(a) //4
  console.log(a) //4
  ```
  ```js
  let a = 1
  let b = 2
  let c = a + (b = a + 1) 
  //return a + 1 to b
  //return a + b to c
  
  console.log(c) //3
  console.log(b) //2
  ```
* `%`
* `**`
* `++` `--`
* Bitwise operators
* Modify-in-place
* `,`

Reference: [Javascript.info/Operators](https://javascript.info/operators)

