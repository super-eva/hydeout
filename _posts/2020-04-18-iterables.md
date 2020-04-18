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
* Iterables are objects that implement the Symbol.iterator method, as described above.
* Array-likes are objects that have indexes and length, so they look like arrays.
