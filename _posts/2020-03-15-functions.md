* If a same-named variable is declared inside the function then it shadows the outer one. For instance, in the code below the function uses the local userName. The outer one is ignored:
```js
let userName = 'John';

function showMessage() {
  let userName = "Bob"; // declare a local variable

  let message = 'Hello, ' + userName; // Bob
  alert(message);
}

// the function will create and use its own userName
showMessage();

alert( userName ); // John, unchanged, the function did not access the outer variable

```

> Variables declared outside of any function are called global. \
> It’s a good practice to minimize the use of global variables, so the function can be pure function.

Parameters (Function Arguments)
--
* Parameters are copied value from outer scope, it won't change the value outside.
```js
let message = '123';
function show(message){
  message = 'test';
  console.log(message);
}
show(message); //test
console.log(message); //123
```
* Can set default value for parameters. If it's not set, the parameter will be `undefined`
```js
function show(message = 'hi'){
  console.log(message);
}

//default value can also be an expression or function
//it will only be evaluated when the message has no parameter
function show(message = (1 == 1)){
  console.log(message);
}
show()
```

Return
--
* The directive `return` can be in any place of the function. When the execution reaches it, the function stops, and the value is returned to the calling code.
* Can have multiple `return` in function
* Can return without value or no return, calling code will get `undefined`
```js
function isOdd(n){
  if(n == 0) return;
  if(n % 2 == 0) return false;
  return true;
}
isOdd(4);
```
* use `()` to wrapp the return expression
```js
function show(){
  let a = 1;
  let b = 1;
  return (
    a == b ? 'hi' : 'test'
  )
}
show();

//no wrap will not working, becuase semicolon `;` will be automatically inserted after return
return
  a == b ? 'hi' : 'test'
```
Function name
--
* Functions are actions. So their name is usually a verb.
> showMessage(..)     // shows a message \
> getAge(..)          // returns the age (gets it somehow) \
> calcSum(..)         // calculates a sum and returns the result \
> createForm(..)      // creates a form (and usually returns it) \
> checkPermission(..) // checks a permission, returns true/false

* Function should do single thing, the following are bad practices.
  * getAge – would be bad if it shows an alert with the age (should only get).
  * createForm – would be bad if it modifies the document, adding a form to it (should only create it and return).
  * checkPermission – would be bad if it displays the access granted/denied message (should only perform the check and return the result)

* Example
```js
function showPrimes(n) {
  nextPrime: for (let i = 2; i < n; i++) {
    // this function can be extracted for better readibility
    for (let j = 2; j < i; j++) {
      if (i % j == 0) continue nextPrime;
    }

    alert( i ); // a prime
  }
}
```
```js
function showPrimes(n) {

  for (let i = 2; i < n; i++) {
    if (!isPrime(i)) continue;

    alert(i);  // a prime
  }
}

function isPrime(n) {
  for (let i = 2; i < n; i++) {
    if ( n % i == 0) return false;
  }
  return true;
}
```

Reference: [javascript.info/function-basics](https://javascript.info/function-basics)
