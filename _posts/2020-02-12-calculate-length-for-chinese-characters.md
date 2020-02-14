

* Chinese character is 2 bytes
* English character is 1 byte

However, the length cannot get the accuate bytes when using length.
```js
'大'.length //1
```

If you need to calcuate the real bytes of mixed string like 'Hi 小明', regular expression is helpful.
```js
'Hi 小明'.replace(/[^\x00-\xff]/g,"..").length //7
```
This checks if chinese character ```[^\x00-\xff]``` exists and change to two 1 byte characters, e.g. ..

Reference: 
https://blog.typeart.cc/JavaScript%E8%A8%88%E7%AE%97%E5%90%AB%E4%B8%AD%E8%8B%B1%E6%96%87%E5%AD%97%E7%9A%84%E5%AD%97%E4%B8%B2%E9%95%B7%E5%BA%A6/