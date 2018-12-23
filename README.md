
<img src="https://raw.githubusercontent.com/cyber-dojo/nginx/master/images/home_page_logo.png" alt="cyber-dojo yin/yang logo" width="50px" height="50px"/>

Current architecture
[![Build Status](https://travis-ci.org/cyber-dojo/start-points-exercises.svg?branch=master)](https://travis-ci.org/cyber-dojo/start-points-exercises)

The git repo for [cyber-dojo's](https://github.com/cyber-dojo/web)
default exercises choices.
You can specify and use an alternative exercises start-point.
Assuming the files in the specified repo have the
[correct format](http://blog.cyber-dojo.org/2016/08/creating-your-own-start-points.html):

```bash
$ ./cyber-dojo start-point create --help
$ ./cyber-dojo start-point create mike --git=https://github.com/mike/start-points-exercises.git
$ ./cyber-dojo up --exercises=mike
```

- - - -
New architecture (not live yet)
[![CircleCI](https://circleci.com/gh/cyber-dojo/start-points-exercises.svg?style=svg)](https://circleci.com/gh/cyber-dojo/start-points-exercises)

This repo specifies the the default exercises start-points when
creating your own start-point image with the
[build_cyber_dojo_start_points_image.sh](../build_cyber_dojo_start_point_image.sh)
script. Viz, the second github URL option in this command:

```bash
$ build_cyber_dojo_start_points_image.sh \
    acme/my-start-points \
      https://github.com/cyber-dojo/start-points-languages.git \
      https://github.com/cyber-dojo/start-points-exercises.git \
      https://github.com/cyber-dojo/start-points-custom.git    \
```
