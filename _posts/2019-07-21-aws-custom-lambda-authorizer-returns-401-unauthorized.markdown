---
title: Returning 401 Unauthorized from AWS Custom Lambda Authorizer
layout: post
date: 2019-07-19 21:53
headerImage: false
tag:
- AWS
- Custom Lambda Authorizer
- Unauthorized Response
- Api Gateway
- .Net Core
category: blog
author: Yogendra Valani
description: This article explains how to return a HTTP 401 Unauthorized response code from a custom authorizer lambda in AWS Api Gateway. 
# jemoji: '<img class="emoji" title=":ramen:" alt=":ramen:" src="https://assets.github.com/images/icons/emoji/unicode/1f35c.png" height="20" width="20" align="absmiddle">'
---



## tl;dr

If you are using the async handler then, to return a 401 you have to:
 - Set Lambda Environment Variable UNWRAP_AGGREGATE_EXCEPTIONS to 1
 - throw exceptions with a message starting with "Unauthorized"
 
So for example: 

{% highlight c# %}
public async Task<APIGatewayCustomAuthorizerResponse> Handler(
    APIGatewayCustomAuthorizerRequest request,
    ILambdaContext context)
    {
        throw new Exception("Unauthorized");
    }
{% endhighlight %}

{% highlight raw %}
![Markdowm Image][/assets/images/LambdaEnvironmentVariable.png]
{% endhighlight %}


For more details on this issue see: <https://github.com/aws/aws-lambda-dotnet/issues/293>

<a href="https://twitter.com/DrValani" class="twitter-follow-button" data-show-count="false">Follow @DrValani</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
