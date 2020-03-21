* Arrow function is simpler way to write function.
```js
// normal function
let add = function(a, b){
  return a+b;
}

// arrow functions
let add = (a, b) => a+b;
```
* If we have only one argument, then parentheses around parameters can be omitted, making that even shorter.
```js
let addOne = a => a+1;
```
* If there are no arguments, parentheses will be empty (but they should be present)
```js
let three = () => 3
```
* Multiline arrow functions, complex expression should be enclosed in curly braces
```js
let addTwice = (a, b) => {
  let sum = a+b;
  return sum * 2;
};

```

Reference: [javascript.info/arrow-functions-basics](https://javascript.info/arrow-functions-basics)
