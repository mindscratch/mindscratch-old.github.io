---
layout: post
title: "Command-Query Responsibility Segregation with Event Sourcing Notes"
date: 2013-07-11 21:03
comments: true
categories: 
---

# CQRS

Some brief notes about CQRS (Command-Query Responsibility Segregation) with [Event Sourcing](http://martinfowler.com/eaaDev/EventSourcing.html):
<!--more-->
* Every state change is materialized in an *Event*
* All Events are sent to an *EventProcessor* 
* EventProcessor stores all events in an *Event Log*
* System can be reset and *Event Log* replayed
* No need for ORM, just persist the Events
* Many different *EventListeners* can be added to EventProcessor (or listen directly on the Event log) 

Some sample apps:

* [https://github.com/cavalle/banksimplistic](https://github.com/cavalle/banksimplistic)
* [https://github.com/slashdotdash/rcqrs](https://github.com/slashdotdash/rcqrs)
