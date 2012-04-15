# Brew-php
PHP related formulas for homebrew

## Requirements

* Homebrew
* Snow Leopard - Lion

## Description

#_[xhprof]_

XHProf is a function-level hierarchical profiler for PHP and has a simple HTML based navigational interface. The raw data collection component is implemented in C (as a PHP extension)

* brew php xhprof

_[install]_:

* 1- download xhprof.rb
* 2- ``mv xhprof.rb `brew --prefix`/Library/Formula``
* 3- `brew install xhprof`

_[Doc]_:

[http://pecl.php.net/package/xhprof](http://pecl.php.net/package/xhprof)


#_[http-php]_

The HTTP extension aims to provide a convenient and powerful set of functionality for major applications.

The HTTP extension eases handling of HTTP URLs, dates, redirects, headers and messages in a HTTP context (both incoming and outgoing). It also provides means for client negotiation of preferred language and charset, as well as a convenient way to exchange arbitrary data with caching and resuming capabilities.

* brew php http


_[install]_:

* 1- download http-php.rb
* 2- ``mv http-php.rb `brew --prefix`/Library/Formula``
* 3- `brew install http-php`

_[Doc]_:

[http://php.net/manual/en/book.http.php](http://php.net/manual/en/book.http.php)


#_[ssh-php]_

Provides bindings to the functions of libssh2 which implements the SSH2 protocol.
libssh2 is available from http:/libssh2.org/

* brew php ssh2

_[install]_:

* 1- download ssh-php.rb
* 2- ``mv ssh-php.rb `brew --prefix`/Library/Formula``
* 3- `brew install ssh-php`

_[Doc]_:

[http://pecl.php.net/package/ssh2](http://pecl.php.net/package/ssh2)