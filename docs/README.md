
[![Build Status](https://travis-ci.org/cyber-dojo/start-points-exercises.svg?branch=master)](https://travis-ci.org/cyber-dojo/start-points-exercises)

<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

The git repo for [cyber-dojo's](https://github.com/cyber-dojo/web)
default exercises choices.

<img src="https://github.com/cyber-dojo/start-points-exercises/blob/master/setup_exercises_start_point.png" width="700px"/>

You can specify and use an alternative exercises start-point.

Assuming the files in the specified repo have the
[correct format](http://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html):

```
$ ./cyber-dojo start-point create --help
$ ./cyber-dojo start-point create mike --git=https://github.com/mike/start-points-exercises.git
$ ./cyber-dojo up --exercises=mike
```
