* arr.splice(index, deleteCount, elem1, ..., elemN)
```js
// remove 3 first elements and replace them with another
arr.splice(0, 3, "Let's", "dance");

// insert without removal
arr.splice(2, 0, "complex", "language");

//negative index are allowed, -1 means the last item
arr.splice(-1, 0, 3, 4);
```
* arr.slice(start, end)
```js
// copy from 1 to 3 (not including 3)
arr.slice(1, 3);

// start or end can be negative value
// no end means till end
arr.slice(-2)

// creates a copy of arr
arr.slice()
```
* arr.concat(arg1, arg2...)
```js
let arr = [1, 2];

// create an array from: arr and [3,4]
alert( arr.concat([3, 4]) ); // 1,2,3,4

// create an array from: arr and [3,4] and [5,6]
alert( arr.concat([3, 4], [5, 6]) ); // 1,2,3,4,5,6

// create an array from: arr and [3,4], then add values 5 and 6
alert( arr.concat([3, 4], 5, 6) ); // 1,2,3,4,5,6
Normally
```
```js
// object cannot be concated normally, unless it has a special Symbol.isConcatSpreadable property
let arr = [1, 2];

let arrayLike = {
  0: "something",
  1: "else",
  [Symbol.isConcatSpreadable]: true,
  length: 2
};

alert( arr.concat(arrayLike) ); // 1,2,something,else
```
* arr.forEach(function(item, index, array) {...})
```js
// forEach will not return any value
["Bilbo", "Gandalf", "Nazgul"].forEach((item, index, array) => {
  alert(`${item} is at index ${index} in ${array}`);
});
```
* arr.includes(item, from)
```js
// includes can handle NaN correctly
const arr = [NaN];
alert( arr.indexOf(NaN) ); // -1 (should be 0, but === equality doesn't work for NaN)
alert( arr.includes(NaN) );// true (correct)
```
* arr.find(function(item, index, array) {...})
   * If it returns true, the search is stopped, the item is returned. If nothing found, undefined is returned. (only one item is returned)
   * arr.findIndex is similar but it returns index
* arr.filter(fn)
   * is similar with arr.find, but return a array
* arr.map(function(item, index, array) { ... })
   * returns the calculate value instead of item
*  arr.sort(fn)
```js
// The items are sorted as strings by default.
arr.sort();

// to sort as numbers, it needs to define compare rules
function compareNumeric(a, b) {
  if (a > b) return 1;
  if (a == b) return 0;
  if (a < b) return -1;
}
let arr = [ 1, 2, 15 ];
arr.sort(compareNumeric);
```
   
