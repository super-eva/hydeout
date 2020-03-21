* Multiple variables can be declared in one line ```let a=1, b=2, c=3;```, but it's not recommeded.
  For the readability, it's better to separate it to different lines like below.
  ```js
  let a = 1;
  let b = 2;
  let c = 3;
  ```
* ```var``` vs ```let``` vs ```const```
   * All are used to declare a variable.
   * The scope ```var``` vs ```let``` are different, ```var``` is valid in function scope, ```let``` is in block scope, 
     e.g. ```for``` ```if```. ```let``` is more recommended since it won't affect the outer scope.
     ```js
     (function test(){
        var a = 1;
        if( a == 1 ){
          var b = 2;
          let c = 3;
        }
        console.log(b); // 2 
        console.log(c); // ReferenceError: c is not defined
     })();
     ```
   * ```const``` is to decalre constants, it cannot be reassigned
* Function languages
   * ```Scala```,```Erlang```
   * Once the value is stored, it's there forever. The value can not be changed.
   ```js
   let a = 1;
   a = 2; // should not be reassign
   ```
   * We can discuss ```Functional Programming``` principle in the future.
* Variable naming
   * Only contain letters, digits and symbols ```$``` ```_```, and the first cannot be digit
   * CamelCase is commonly used, e.g. ```userName```
   * Case sensitive, ```user``` and ```User``` are different
   * Cannot name [reserved words](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Lexical_grammar#Keywords)
   * Constant with a “hard-coded” value is always naming in uppercase and connect with underscore, e.g. ```const COLOR_RED = 'red'```
   
 Reference: https://javascript.info/variables
