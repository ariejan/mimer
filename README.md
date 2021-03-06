# Mimer

[![Build Status](https://travis-ci.org/ariejan/mimer.svg?branch=master)](https://travis-ci.org/ariejan/mimer)

Mimer tries to find a file's mime-type by using unix' `file` command. File extensions are never used to identify a file.

Mimer has been tested to work on Debian 5.0 and Mac OS X 10.5+. This gem is useless on Windows. 

## Install

    gem install mimer
    
You may need to install the gemcutter gem first.

## Usage

It's quite easy:

    mimer = Mimer.identify('/tmp/testfile')
    
    mimer.mime_type
    => "image/jpeg; charset=binary"
    
    mimer.text?
    => false
    
    mimer.image?
    => true

## Get the code

http://github.com/ariejan/mimer

## Note on Patches/Pull Requests
 
 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Commit, do not mess with rakefile, version, or history.
   (if you want to have your own version, that is fine but
    bump version in a commit by itself I can ignore when I pull)
 * Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2009-2015 Ariejan de Vroom.
