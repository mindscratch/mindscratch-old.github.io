---
layout: post
title: "Go: imports with underscores"
date: 2013-12-06 23:10
comments: true
categories: golang, chain
---

One way I'm learning Go is to look at open source Go projects. To list a few:

* [blackfriday](https://github.com/russross/blackfriday)
* [envconfig](https://github.com/kelseyhightower/envconfig)
* [GoConvey](https://github.com/smartystreets/goconvey)

Something I've seen in a few places are imports that have an underscore  [before the name](https://github.com/smartystreets/goconvey/blob/24673de23f07dcdbf0fd5b72c9c24dff5840f7db/goconvey.go#L26) of the package.
<!-- more -->

{% gist 7837213 %}

The [blank identifier](http://golang.org/doc/effective_go.html#blank) can be used in a few situations, however, the case I want to focus on in this post is [Import for side effect](http://golang.org/doc/effective_go.html#blank_unused).

Reading the description I saw a reference to a function named _init_, which was something I hadn't heard of before. Sure enough, the [init function](http://golang.org/doc/effective_go.html#init) is real and it's kinda special.

The function must have the signature `func init() { ... }`, that's it. Each source file can have 0 or more `init` functions, the example above shows foo.go with two `init` functions. 

Wny might you want to use an `init` function?

> Besides initializations that cannot be expressed as declarations, a common use of init functions is to verify or repair correctness of the program state before real execution begins.
> -- <cite>[Effective Go](http://golang.org/doc/effective_go.html#init)</cite>

Tomorrow, not sure yet.



\#Day1
