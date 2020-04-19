### Symbol.iterator
* Object with this method will be iterable
* When performing for..of, it calls next(), done=true means the iteration is finished, otherwise value is the next value
```js
let range = {
  from: 1,
  to: 5,

  [Symbol.iterator]() {
    this.current = this.from;
    return this;
  },

  next() {
    if (this.current <= this.to) {
      return { done: false, value: this.current++ };
    } else {
      return { done: true };
    }
  }
};

for (let num of range) {
  alert(num); // 1, then 2, 3, 4, 5
}
```
### Calling an iterator explicitly
* String is build-in iterable, but it can also be called using `Symbol.iterator`.
```js
let str = "Hello";

// does the same as
// for (let char of str) alert(char);

let iterator = str[Symbol.iterator]();

while (true) {
  let result = iterator.next();
  if (result.done) break;
  alert(result.value); // outputs characters one by one
}
```
### Iterables and array-likes
* Both of them are not arrays, but can use `for..of`. They don't have `push` `pop` functions.
* Iterables are objects that implement the Symbol.iterator method, as described above.
* Array-likes are objects that have indexes and length, so they look like arrays.
  ```js
  let arrayLike = { // has indexes and length => array-like
    0: "Hello",
    1: "World",
    length: 2
  };

  // Error (no Symbol.iterator)
  for (let item of arrayLike) {}
  ```
  
 ### Array.from
 * Turn an iterable or array-like object to real `array`
 * `Array.from(obj, mapFn, thisArg)`, second argument accepts an function to execute for each element beofore adding to the array
  ```js
  let arrayLike = {
    0: "Hello",
    1: "World",
    length: 2
  };

  let arr = Array.from(arrayLike); // (*)
  alert(arr.pop()); // World (method works)
  ```
 Reference: [javascript.info/iterable](https://javascript.info/iterable)
  
