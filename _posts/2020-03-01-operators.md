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
  * unary `+` applied to values before the binary ones
  ```js
  console.log(+'1' + +'2') //3
  ```
