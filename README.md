# antibase-css v0.0.3

This module is web frontend sass library


# feature
sass modules
utility class(margin align text mediaqueries)

# setting variable

## html type
$use_html5 true(default) or false
$reset_type  "reset"(default) or "normalize"

## grid system
$content-width: 1000px !default
$desktop-width: $content-width !default
$gutter-width: 20px !default
$sp-width: 640px !default

## font size
$baseFontSizeNum: 13 !default

and more support browser flag($support-ie6, $support-ie7, $support-ie8, etc...)

# install
```
npm install --save-dev antibase-css
```


# usage
```
# css/style.sass
@import "../node_modules/antibase-css/sass/antibase"
```


