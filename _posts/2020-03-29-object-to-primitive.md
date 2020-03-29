## Convertion hint
1. All objects are true in a boolean context. There are only **numeric** and **string** conversions.   
2. The numeric conversion happens when we subtract objects or apply mathematical functions. For instance, Date objects (to be covered in the chapter Date and time) can be subtracted, and the result of date1 - date2 is the time difference between two dates.   
3. As for the string conversion – it usually happens when we output an object like alert(obj) and in similar contexts.   
4. When a object is passed as a argument, the object will be converted to a primitive value first

## Object ToPrimitive
### There are three variants of type conversion, so-called “hints”
* string
```js
// `alert` will convert the object to string
alert(obj); 

// use object as the object key
anotherObj[obj] = 123;
```
* number
```js
// explicit conversion
let num = Number(obj);

// maths (except binary plus)
let n = +obj; // unary plus
let delta = date1 - date2;

// less/greater comparison
let greater = user1 > user2;
```
* default, Occurs in rare cases when the operator is “not sure” what type to expect.
  +  most built-ins treat default same as number
```js
// + can be user for concat string or add number, not sure what type
let total = obj1 + obj2;

// == will do the implict conversion, not sure what type
if (user == 1) { ... };

// The greater and less comparison operators, such as < >, can work with both strings and numbers too. 
// Still, they use the "number" hint, not "default". That’s for historical reasons.
let greater = user1 > user2;
```
* no boolean convertion, all objects are true in boolean context
### To do the conversion, JavaScript tries to find and call three object methods:
1. Call `obj[Symbol.toPrimitive](hint)` – the method with the symbolic key Symbol.toPrimitive (system symbol), if such method exists,
```js
let user = {
  name: "John",
  money: 1000,

  [Symbol.toPrimitive](hint) {
    alert(`hint: ${hint}`);
    return hint == "string" ? `{name: "${this.name}"}` : this.money;
  }
};

// conversions demo:
alert(user); // hint: string -> {name: "John"}
alert(+user); // hint: number -> 1000
alert(user + 500); // hint: default -> 1500
```
2. Otherwise if hint is "string", try `obj.toString()` and `obj.valueOf()`, whatever exists.
3. Otherwise if hint is "number" or "default", try `obj.valueOf()` and `obj.toString()`, whatever exists.
```js
let user = {
  name: "John",
  money: 1000,

  // for hint="string"
  toString() {
    return `{name: "${this.name}"}`;
  },

  // for hint="number" or "default"
  valueOf() {
    return this.money;
  }

};

alert(user); // toString -> {name: "John"}
alert(+user); // valueOf -> 1000
alert(user + 500); // valueOf -> 1500
```
By default, a plain object has following toString and valueOf methods:
* The toString method returns a string "[object Object]".
* The valueOf method returns the object itself.
* These methods must return a primitive value. If toString or valueOf returns an object, then it’s ignored
```js
let user = {name: "John"};
console.log(user.toString()); // [object Object]
console.log(user.valueOf()); // object itself, it will be ignored
```
### Return types
This is no guarantee to return a hinted value, but it guarantee to return a primitive value, not a object.
```
Note: 
For historical reasons, if toString or valueOf returns an object, there’s no error, but such value is ignored (like if the method didn’t exist). That’s because in ancient times there was no good “error” concept in JavaScript.
In contrast, Symbol.toPrimitive must return a primitive, otherwise there will be an error.
```

Reference: [javascript.info/object-toprimitive](https://javascript.info/object-toprimitive)
