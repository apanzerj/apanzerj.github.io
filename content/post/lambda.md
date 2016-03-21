+++
author = ""
date = "2016-03-21T08:59:37-07:00"
description = ""
tags = ['aws', 'weekend', 'projects']
title = "lambda"

+++

I have been playing around with the Alexa Skills Kit and have had a lot of fun. This is the script I use to deploy my code to a lambda. Saves me a lot of time:

<pre class='line-numbers' data-src='plugins/line-numbers/prism-line-numbers.js'>
  <code class='language-bash'>#!/bin/bash
TS=$(date +"%F.%s")
zip -r  $TS.zip AlexaSkill.js index.js [some other files]
aws s3 cp $TS.zip s3://ajp.lambda
aws lambda --region us-east-1 update-function-code --function-name funky --s3-bucket [bucket] --s3-key $TS.zip</code>
  </pre>


I'm currently playing with the Zendesk API and Alexa but I'm at loss for things I can do because of the limited parameters you are allowed to pass.

Boo.