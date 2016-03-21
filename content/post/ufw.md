+++
author = ""
date = "2016-03-17T10:10:56-07:00"
description = ""
tags = []
title = "List top IPs"

+++

cat access.log.1 | grep "POST.*xml.*" | awk -F - '{ print $1 }' | sort | uniq -c | sort -nr | head | awk '{print $2}'