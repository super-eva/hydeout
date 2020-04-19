### Map
* Methods and properties are:
  ```
  new Map() – creates the map.
  map.set(key, value) – stores the value by the key.
  map.get(key) – returns the value by the key, undefined if key doesn’t exist in map.
  map.has(key) – returns true if the key exists, false otherwise.
  map.delete(key) – removes the value by the key.
  map.clear() – removes everything from the map.
  map.size – returns the current element count.
  ```
* Similart with `object` but `Map` allows any types keys. `object`only has string key.
  ```js
  // object key will be converted to string, so 1 is same as '1'
  let obj = {};
  obj[1] = 1;
  obj['1'] = 2;
  console.log(obj); // {'1': 2}
  
  //map will keep the key type, so 1 is not same as '1'
  let map = new Map()
  map.set(1, 1)
  map.set('1', 2)
  console.log(map) // {1 => 1, "1" => 2}
  ```
* map[key] isn’t the right way to use a Map
* Map can also use objects as keys.
* `NaN` can be used as the key as well. 
* Every map.set call returns the map itself, so we can “chain” the calls:
  ```js
  map.set('1', 'str1')
  .set(1, 'num1')
  .set(true, 'bool1');
  ```
* Iteration over Map
  * map.keys() – returns an iterable for keys,
  * map.values() – returns an iterable for values,
  * map.entries() – returns an iterable for entries [key, value], it’s used by default in for..of.
* Map preserves this order, unlike a regular Object.
  ```js
  // object will be reordered if the key can be converted to number
  let obj = {
    1: 1,
    3: 3,
    2: 2,
  }
  console.log(obj) // {1: 1, 2: 2, 3: 3}

  let map = new Map();
  map.set(1,1);
  map.set(3,3);
  map.set(2,2);
  console.log(map) // {1 => 1, 3 => 3, 2 => 2}
  ```
* Map has a built-in forEach method, similar to Array
* When a Map is created, we can pass an array (or another iterable) with key/value pairs for initialization
  ```js
  let map = new Map([
    ['1',  'str1'],
    [1,    'num1'],
    [true, 'bool1']
  ]);
  ```
* Convert map to object, Object.fromEntries
  ```js
  let map = new Map();
  map.set('banana', 1);
  map.set('orange', 2);
  map.set('meat', 4);

  let obj = Object.fromEntries(map.entries()); // make a plain object (*)
  // can omit .entries, the standard iteration for map returns same key/value pairs as map.entries()
  let obj = Object.fromEntries(map); 

  ```

