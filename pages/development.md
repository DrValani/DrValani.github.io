---
layout: page
show_meta: false
title: "Development"
subheadline: "Examples of useful software development practices"
header:
   image_fullwidth: "header_unsplash_5.jpg"
permalink: "/development/"
---
<ul>
    {% for post in site.categories.development %}
    <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
