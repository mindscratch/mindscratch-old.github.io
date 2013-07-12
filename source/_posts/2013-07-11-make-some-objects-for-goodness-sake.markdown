---
layout: post
title: "Make some objects for goodness sake"
date: 2012-06-02 21:43
comments: false
categories: 
---

*This post was originally posted on June 2, 2012 on my blog hosted at Blogger, but is being reposted here so the post doesn't get lost since the Blogger blog is no longer being maintained.*

---


There’s been lots of discussion lately about making Rails more object oriented. I’m not sure what spurred all the recent discussions, but I think it’s great that there are lots of discussions spreading around the community.

When I first began learning Rails I quickly bumped into those articles talking about fat models and skinny controllers. I quickly followed suite as it seemed to make sense; initially. Then I got to a point where thought, “why not put some of this stuff into plain old ruby objects in the lib directory?”. I began doing that and have continued doing that ever since and I, as many recent Rails developers have written and talked about, think you should too.

Some of the recent libraries, posts or books related to more object oriented Rails include:

* [Objects on Rails](http://objectsonrails.com/) by [Avdi Grim](http://avdi.org/) - book
* [Focused Controller](https://github.com/jonleighton/focused_controller) - ruby gem
* [Objectify](http://jamesgolick.com/2012/5/22/objectify-a-better-way-to-build-rails-applications.html) - blog post about a gem
* I also saw a project on github that was some sort of command pattern implementation, but I can’t recall the name.

Prior to all of those, and I’m sure I’m missing some, I heard Jeff Casmir’s [talk](http://en.oreilly.com/rails2011/public/schedule/speaker/5453) at RailsConf 2011. He talked about potentially getting away from the dogma of fat models, skinny controllers by suggesting people create more libraries/gems, use the presenter pattern, etc.

In parting I’d just like to say, don’t be afraid of having code outside of app/models and app/controllers. Ruby is object oriented and Rails is a framework that is built with Ruby, so go ahead and use your bad ass OO skills already! Rails provides lots of conventions and opinionated views, but that doesn’t mean you can’t do what makes the most sense for your applications. And please, feel free to use the lib directory or even create some gems that you could potentially reuse. 

Hell, get real crazy and build some engines! (I’ve built 3 in the last 2 months).
