---
layout: post
title: "Prototyping with a Server in the Browser"
date: 2013-07-12 22:08
comments: true
categories: 
---

Prototyping is often used to "quickly" implement a new feature or least part of a feature with the hopes of getting feedback to help determine if a *real* implementation should be provided. 
<!--more-->
All to often our customers, managers or leads see the prototype and think, "Great, now we can move onto the next feature", completely forgetting what they've seen is the prototype. Ah, the perils of being a developer.

Sometimes to "whip up" a prototype I've hacked together some server and client-side code, dreading it might end up in production. In fact, one of the downsides to hacking together some code for a prototype is having to evolve the hacked in code as users, customers, managers, etc see the prototype and ask you to tweak it here and there. 

In a recent two-week sprint, I decided it would be worth trying to implement the UI portion of a new set of features before doing any server-side work. I thought by using a *fake* server in the browser I could defer having to implement server-side logic and database modeling tasks.

I did a quick search and found a presentation by Pavel Filippov titled [Fake API using Sinon.JS
and LocalStorage](http://emdin.info/r/sinon-talk/#1). Genius! I hadn't thought about the [FakeServer](http://sinonjs.org/docs/#server) provided by Sinon.JS until I saw the aforementioned slides.

I present my version of a *Server in the Browser*:


{% gist 5951148 %}

Certainly this *fake* logic in the client could do more complicated work such as actually storing data using client-side [storage](http://www.html5rocks.com/en/features/storage). In any event, I look forward to wrapping up my current sprint at work to see just how well this 'Server in the Browser' goes.