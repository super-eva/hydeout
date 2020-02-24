* Data Types (8)
  * number - integer and floating numbers
    * special numeric values ```Infinity``` ```-Infinity``` ```NaN``` 
    ```js
    console.log(typeof(Infinity)) //number
    console.log(typeof(NaN)) //number
    
    console.log(1/0) //Infinity
    console.log(-1/0) //-Infinity
    console.log('test'/2) //NaN
    ```
  * bigint
    * number type can only represent -2^53 ~ 2^53
    * add ```n``` to the end to represent bigint
    ```js
    const a = 1234567890123456789012345678901234567890n;
    console.log(typeof(a)) //bigint
    ```
    * ```bigint``` is not strictly equal to ```number```
    ```js
    console.log(0n === 0) //false
    console.log(0n == 0) //true
    ```
    * support in Chrome, Firefox, but not in Safari, Edge
  * string
     * should be surrounded by quotes. e.g. `"test"` `'test'` `` `test ${a}` ``
     * no ```char``` in javascript language, `string` can represent single character or many.
  * boolean - `true` `false`
  * null - it's nothing, empty or unknown value.
    * type is `object`, it's a recognized error in typeof.
    ```js
    console.log(typeof(null)) //object
    ```
  * undefined - variable is declared but no value is assigned.
    ```js
    let a;
    console.log(a); //undefined
    ```
    * Normally, assign `null` to represent an empty or unknown value, and `undefined` to check if a variable has been assigned.
  * object and symbol - discuss detail in the future
    * The symbol type is used to create unique identifiers for objects
    ```js
    let prop1 = Symbol();
    let prop2 = Symbol();
    let a = {}
    a[prop1] = 1
    a[prop2] = 2
    console.log(a[prop1]) //1
    console.log(a[prop2]) //2
    ```
    * function is subtype of object
    ```js
    var a = function(){};
    console.log(typeof(a)); //function
    ```
    
Reference: https://javascript.info/types
