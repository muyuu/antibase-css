g = require "gulp"
$ = require( 'gulp-load-plugins' )()
minifyCss = require 'gulp-minify-css'

src = "./"
dist = "./"
port = 5555

s =
    root: src
    css: src + "sass/"

d =
    root: dist
    css: dist

# local server
g.task "connect", ->
    $.connect.server
        root: "#{d.root}"
        port: port
        livereload: true

    options =
        url: "http://localhost:#{port}"
        app: "Google Chrome"

    g.src "#{d.root}index.html"
    .pipe( $.open "", options )


# css
g.task "css", ->
    g.src "#{s.css}antibase.sass"
    .pipe $.sourcemaps.init()
    .pipe $.plumber()
    .pipe $.sass
        outputStyle: 'expanded'
    .pipe $.autoprefixer([
        'last 3 versions'
        'Explorer >= 8'
    ])
    .pipe $.csscomb()
    .pipe minifyCss
        compatibility: 'ie8'
    .pipe $.sourcemaps.write("./")
    .pipe g.dest( "#{d.css}" )



# watch
g.task "watch", ->
    g.watch "#{s.css}**/*.sass", ["css"]


# default task
g.task "default", ->
    g.start ["connect", "watch"]

# build task
g.task "pkg", ->
    g.start ["css"]

