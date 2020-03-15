* Function Declaration vs Function expression
> When we need to declare a function, the first to consider is Function Declaration syntax. It gives more freedom in how to organize our code.

Function Declaration | Function expression
--                   | --
`if` `for` `function` doesn't need `;` in the end | need `;` in the end
Function Declaration can be called earlier than it is defined. | A Function Expression is created when the execution reaches it and is usable only from that moment.
Function Declaratio is only visible inside the code block in which it resides.
Function Declarations are more “eye-catching” | Function Expression is good to use when need conditional declaration
```js
// Function Declaration
function sayHi() {
  alert( "Hello" );
}

// Function expression
let sayHi = function() {
  alert( "Hello" );
};
```
* In JavaScript, a function is stored like value. It will only be executed with `()`. 
```js
function sayHi() {
  alert( "Hello" );
}
//it won't execute the code, because no ()
alert( sayHi ); // shows the function code
```
* Function can be assigned to variable
```js
let sayHi = function(){
  console.log('Hi');
}
// copy the result to fn
let result = sayHi();
// copy function to fn1
let fn = sayHi;
```

* Callback functions
> The idea is that we pass a function and expect it to be “called back” later if necessary.
```js
function ask(question, yes, no) {
  if (confirm(question)) yes()
  else no();
}
function showOk() {
  alert( "You agreed." );
}
function showCancel() {
  alert( "You canceled the execution." );
}
// showOk, showCancel are callback functions
ask("Do you agree?", showOk, showCancel);

// anonymous function can also be callback functions
ask("Do you agree?", function(){...}, function(){...});
```

Reference: [javascript.info/function-expressions](https://javascript.info/function-expressions)


