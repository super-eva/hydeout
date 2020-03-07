Browser functions:
1. `alert` - shows a message and pauses script execution until the user presses “OK”.
```js
alert("Hello");
```
> The mini-window with the message is called a modal window. 
> The word “modal” means that the visitor can’t interact with the rest of the page, press other buttons, etc. 
> until they have dealt with the window. In this case – until they press “OK”.


2. `prompt` - shows a modal window with a text message, an input field for the visitor, and the buttons OK/Cancel.
```js
prompt("What's your name?", 'eva') // eva is the default value to display on input field
```
> The second parameter is optional, but if we don’t supply it, 
> Internet Explorer will insert the text "undefined" into the prompt.
> It's recommended to provide the second argument

3. `confirm` - shows a modal window with a question and two buttons: OK and Cancel.
```js
confirm('Are you sure?')
```

Reference: [Javascript.info/alert-prompt-confirm](https://javascript.info/alert-prompt-confirm)
