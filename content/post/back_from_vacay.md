+++
author = "Adam Panzer"
date = "2016-03-03T10:06:05-08:00"
description = ""
tags = ['vacation', 'tired']
title = "Back From Vacay"

+++

Wow. We saw a lot of whales. It was awesome. I got to relax a lot and do plenty of reading. Since vacation started I finished the Old Man's War Series and started the Vatta's War series (which I'm not crazy about and not going to continue reading).

Note:

Parsing log files for a client I need to find anyone making a POST and count how often they do it:

<pre class='line-numbers' data-src='plugins/line-numbers/prism-line-numbers.js'>
  <code class='language-bash'>zcat access.log.{2,3,4,5,6,7} | grep "POST" | awk -F - '{ print $1 }' | sort | uniq -c </code>
  </pre>