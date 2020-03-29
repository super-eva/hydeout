Constructor functions technically are regular functions. 
The main purpose of constructors – to implement reusable object creation code.
```js
// They are named with capital letter first.
function User(name) {
  this.name = name;
  this.isAdmin = false;
}
// They should be executed only with "new" operator.
let user = new User("Jack");

alert(user.name); // Jack
alert(user.isAdmin); // false
```
*  When a function is executed with new, it does the following steps:
  + A new empty object is created and assigned to this.
  + The function body executes. Usually it modifies this, adds new properties to it.
  + The value of this is returned.
  ```js
  function User(name) {
    // this = {};  (implicitly)

    // add properties to this
    this.name = name;
    this.isAdmin = false;

    // return this;  (implicitly)
  }
  
  //if no argument, () can be omitted, but not recommended
  let user = new User;
  ```

### Return from constructors
Usually, constructors return this. But there is still return statement by the following rules:
* If return is called with an object, then the object is returned instead of this.
* If return is called with a primitive, it’s ignored.
```js
function User(name) {
  this.name = name;
  this.isAdmin = false;

  return { name: 'test' }; // return the object
  return 1; // ignored, return this
}
```

Reference: [javascript.info/constructor-new](https://javascript.info/constructor-new)
