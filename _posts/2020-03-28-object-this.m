* Few ways to declare a function in object
```js
user.sayHi = function() {
  alert("Hello!");
};
```
```js
// first, declare
function sayHi() {
  alert("Hello!");
};

// then add as a method
user.sayHi = sayHi;
```
```js
user = {
  sayHi: function() {
    alert("Hello");
  }
};

//shorthand, this is preferred
user = {
  sayHi() { // same as "sayHi: function()"
    alert("Hello");
  }
};
```
* To access the object, a method can use the this keyword.
```js
let user = {
  name: "John",
  age: 30,

  sayHi() {
    // "this" is the "current object"
    alert(this.name);
  }
};
```
* It's also possible to use the object name. But if it's assigned to another object, it won't get the correct name.
```js
let user = {
  name: "John",
  age: 30,

  sayHi() {
    alert(user.name);
  }
};
user.sayHi(); // this is working
let user1 = user;
user = null; 
user1.sayHi(); // this is not working, since user has been set to null, however, if use this, it will work
```
* The value of this is evaluated during the run-time, depending on the context.  
**If there’s this inside a function, it expects to be called in an object context.**
```js
let user = { name: "John" };
let admin = { name: "Admin" };

function sayHi() {
  alert( this.name );
}

user.f = sayHi;
admin.f = sayHi;

// if obj.f() is called, then this is obj during the call of f
user.f(); // John  (this == user)
admin.f(); // Admin  (this == admin)

// In strict mode, calling without an object: this == undefined
// In non-strict mode the value of this in such case will be the global object
sayHi(); // undefined
```
* The case that this cannot be worked. Later in this tutorial, we will learn various ways to solve this problem such as func.bind().
```js
let user = {
  name: "John",
  hi() { alert(this.name); }
}

// split getting and calling the method in two lines
let hi = user.hi;
hi(); // Error, there is no object before .
```
* Arrow functions have no “this”
```js
let user = {
  firstName: "Ilya",
  sayHi() {
    let arrow = () => alert(this.firstName);
    arrow(); // uses this from the outer user.sayHi() method
  }
};

user.sayHi(); // Ilya
```

Reference: [javascript.info/object-methods](https://javascript.info/object-methods)
