* Operators and functions will automatically convert the values to the type they need.
   * `alert`, converts any value to string
   * math operators `+` `-`, converts any value to number
* Explicit Conversion
   * String
   ```js
   let s = String(3)
   typeof s //string
   ```
   * Number
   
   Value | Becomes
   ----- | --------
   `undefined` | `NaN`
   `null` | 0
   `true` and `false` | 1 and 0
   string | `NaN`
   
   ```js
   let num = Number('123');
   typeof num //number

   ```
   ```js
   let num = Number('hello');
   typeof num //NaN
   ```
   * Boolean
   
   Value | Becomes
   ----- | --------
   0, '', `null`, `undefined` `NaN` | `false`
   other except above `[]`, `{}`, '0', ' ' | `true`
   
   ```js
   let bool = Boolean(1)
   typeof bool //boolean
   ```
   
   Reference:
   [Javascript.info/type-conversions](https://javascript.info/type-conversions)
   
