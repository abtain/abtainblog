---
layout: post
title: Creating A Jekyll Blog
style: blue
---

Why I Now Use A Static Site Generator
=====================================

For running blogs for years I have ran wordpress for myself and clients. Some people come to me looking for help after their blogs have
become hacked or slow.

I have used mephisto, typo, wordpress, typepad, homegrown and a few other blogging platforms. I think jekyll best suits me.

Previously I used a blog written in Ruby on Rails than served up each request dynamically without caching.
When these posts got on the front page of hacker news they would slow down the server because thousands 
of users were hitting the dynamic blog pages.

Goals
* Posts should be written in markdown because thats what I have been writing all my notes in lately.
* Site should be simple to change
* Comments are not needed since most blog comments are spam anyway.
* Site should be fast and responsive. Because a popular post shouldn't slow down the servers.

This blog is built on top of a static site generate called [Jekyll](https://github.com/mojombo/jekyll) and posts are written in a simple markeup
language called [markdown](http://daringfireball.net/projects/markdown/basics).

Blogs are a good fit for static site generators because they are mostly content that doesn't change but can become very popular.

### Static sites are:
* Simpler
* Faster
* Secure
* Stable

### Dynamic sites are:
* Flexible
* Slower
* Hackable
* More Complex

<hr />

## Static sites don't have databases that go down or execute code that breaks.

There is no need to dynamically generate every page. 
<hr />

## Static sites are more resistant to hackers

Static sites don't execute code. I have made simple mistakes that if a hacker came by they could exploit to cause trouble. No code is more secure
than no code.

<hr />

## Simpler sites are easier to update and run

Blogs that use wordpress get hacked if they are not updated regularly.

<hr />

## Static sites are Incredibly Fast

I benchmarked a small server with some older Xeon processors and got well over 3,000 requests per second.
If the server was maxed out it could handle over 300 million hits per day. The same server running wordpress
would barely serve 1 million hits per day.

<hr />

{% highlight bash %}
# Run the apache benchmark for 10,000 requests with 4 concurrent threads
$ ab -n 10000 -c 4 "http://127.0.0.1/"
{% endhighlight %}

### Benchmark Results

<pre>
Time taken for tests:   2.692 seconds
Complete requests:      10000
Failed requests:        0
Write errors:           0
Total transferred:      13650000 bytes
HTML transferred:       12140000 bytes
Requests per second:    3714.10 [#/sec] (mean)
Time per request:       1.077 [ms] (mean)
Time per request:       0.269 [ms] (mean, across all concurrent requests)
Transfer rate:          4950.92 [Kbytes/sec] received
</pre>

<hr />

# Setup your own static blog
Checkout the source to this site at [github](https://github.com/abtain/abtainblog)

Checkout a similar post by [Recursive Designs](http://recursive-design.com/blog/2010/10/12/static-blogging-the-jekyll-way/).

Any hosting account will do but I highly recommend [hostgator](http://www.hostgator.com/). They a hosting account for only $5/month.
