# antibase-css v0.1.1

This module is web frontend sass library


# feature
- sass modules
- utility class(margin align text mediaqueries)

# setting variable

## html type
- $use_html5 true(default) or false
- $reset_type  "reset"(default) or "normalize"

## grid system
- $content-width: 1000px
- $desktop-width: $content-width
- $gutter-width: 20px
- $sp-width: 640px

## margin
- $tablet-inner-margin: 10px
- $sp-inner-margin: 10px

## font
- $baseFontSizeNum: 16
- $baseFontSize: $baseFontSizeNum + px
- $baseFontFamily: "ヒラギノ角ゴ Pro W3", "Hiragino Kaku Gothic Pro", "メイリオ", Meiryo, "ＭＳ Ｐゴシック", "MS PGothic", sans-serif

## color
- $bodyBgColor: #fff
- $baseFontColor: #000
- $linkColor: $baseFontColor
- $linkColor-hover: $baseFontColor
- $baseColor1: #663300
- $baseColor2: lighten($baseColor1, 10%)
- $mainColor1: #1983f0
- $mainColor2: lighten($mainColor1, 10%)
- $subColor1: #1983f0
- $subColor2: lighten($subColor1, 10%)

## color name
$white : #fff
$black : #000

### red
$lightRed: #ff6d72
$red: #ff3135
$darkRed: #AB2520

### green
$lightGreen: #f0ffcf
$green: #8fc31f
$darkGreen: #5b8a10

### blue
$lightBlue: #eef2f8
$blue: #2253b4
$darkBlue: #4e6c8c

### orange
$lightOrange: #ffc400
$orange: #ffc400
$darkOrange: #ff7200

### pink
$lightPink: #ffacd1
$pink: #ff4a9b
$darkPink: #be5254

### purple
$lightPurple: #7347b6
$purple: #7347b6
$darkPurple: #4e6c8c

### yellow
$lightYellow: #f4e28e
$yellow: #fad704
$darkYellow: #faca6e

### gray
$lightGray: #a2a2a2
$gray: #999
$darkGray: #565656

### brown
$lightBrown: #59380b
$brown: #38210e
$darkBrown: #2c1d06

### ocher (黄土色)
$lightOcher: #dbb542
$ocher: #dbb542
$darkOcher: #9a8032


and more support browser flag($support-ie6, $support-ie7, $support-ie8, etc...)


# utility classes

## align
- u-align--left
- u-align--center
- u-align--right
- u-align--vertical-middle
- u-align--vertical-base

## device
- u-only--pc
- u-only--sp
- u-not--pc
- u-not--sp
- u-inner--tablet
    + margin left & right $tablet-inner-margin
- u-inner--sp
    + margin left & right $sp-inner-margin

## margin
- u-mgt--(0 ~ 100 step 5)
- u-mgb--(0 ~ 100 step 5)
- u-mgv--(0 ~ 100 step 5)
- u-mgl--(0 ~ 100 step 5)
- u-mgr--(0 ~ 100 step 5)
- u-mgh--(0 ~ 100 step 5)

## text
- u-txt--strong
- u-txt--small


# install
```
npm install --save-dev antibase-css
```


# usage
```
# css/style.sass
@import "../node_modules/antibase-css/sass/antibase"
```


# mixin

## device
- =break($width)
- =tablet
- =smartphone

## utility
- =clrfx
- =absorb

## column
- =row
- =col($num)
- =twoCol
- =twoColFixed
- =twoColFixedRight
- =twoColFluid

## for IE
- =innner-block
- =table-cell($num)

## css3
- =opacity($num)
- =rem($fontsize, $base: $baseFontSizeNum)
- =linkListArrow($size: 10px, $right: 10px, $border-size: 2px, $color: #333)

## replace images
- =replaceImg($url, $width, $height, $sp: 0)
- =replaceImgHover($url, $width, $height, $sp: 0)

