* There are 7 primitive types: `string`, `number`, `bigint`, `boolean`, `symbol`, `null` and `undefined`.
* A primitive as an object, access method in primitive like object. The method are defined in `String`, `Number`, `Boolean` and `Symbol`.
```js
let str = 'hello';
console.log(str.toUpperCase())
```
* How it works?
1. The string str is a primitive. So in the moment of accessing its property, a special object is created that knows the value of the string, and has useful methods, like toUpperCase().
2. That method runs and returns a new string (shown by alert).
3. The special object is destroyed, leaving the primitive str alone.
* Constructors String/Number/Boolean are for internal use only.
```js
let a = new Number(0); //unrecommend
typeof a // object
if(a){ //true, since it's object, it may be confused
  console.log('test')
}
```
* null/undefined have no methods

Reference: [javascript.info/primitives-methods](https://javascript.info/primitives-methods)
