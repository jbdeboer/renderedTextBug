Generated with:

```
pub install
dart2js renderedText.dart -o renderedText.dart.js
```

In Dartium, this will print to the console:
```
RenderedText: 
```

In dart2js, this prints:
```
Uncaught TypeError: Cannot read property 'textContent' of null
renderedText.dart.js:1155
renderedText renderedText.dart.js:1155
main renderedText.dart.js:1165
(anonymous function) renderedText.dart.js:1375
init.currentScript renderedText.dart.js:1349
(anonymous function) renderedText.dart.js:1363
(anonymous function) renderedText.dart.js:1580
```
