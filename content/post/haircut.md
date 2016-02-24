+++
author = "Adam Panzer"
date = "2016-02-24T13:48:33-08:00"
description = "I got a haircut at fellow barber down the block."
tags = ['haircut', 'fellow', 'barber']
draft = false
title = "My Haircut"

+++

# First Hugo Post
Special thanks to [OneThingWell](http://onethingwell.org) for the insight to use Hugo for a static blog. This is pretty cool.

I have no idea what I'm going to use this for at the moment. Maybe just notes?

Shit I've Enjoyed Recently:

* [The Pure Function As An Object (PFAAO) Ruby Pattern](http://www.tomdalling.com/blog/ruby/pure-function-as-an-object-PFAAO-pattern/)
* [Building software against the meetup API whilst 20,000ft above the North Sea](http://www.specto.io/blog/hoverfly-meetup-api.html)

## PFAAO Ruby Pattern
I really enjoyed reading this as it gave me some insight into a pattern I've seen a lot but never fully understood. I've decided to use this in an upcoming project where I will need to use a very very limited amount (ie: 2 endpoints) of a remote API. I'll have an object that is literally: FooClient.register! and FooClient.deregister!

## HoverFly (SpectoLabs)
I'm interested in seeing what we can do with this tool in the longrun when it comes to testing and simulating API's for internal services in a [SOA](https://en.wikipedia.org/wiki/Service-oriented_architecture).

# Haircut!
![My Hair](/images/posts/2016/02/24/haircut.jpg)

Wooo

# Deploy Script

I wrote a deploy script that uses two copies of the same repo for hugo so that deploying is super easy. 

<pre class='line-numbers language-bash' data-src='plugins/line-numbers/prism-line-numbers.css'>
  <code>
  hugo
  git add ./
  git commit -m 'deploy - source update'
  git push
  cp -r ./public/ ../apanzerj.github.io
  cd ../apanzerj.github.io
  git add ./
  git commit -m 'deploy - generated site update'
  git push
  </code>
</pre>