---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
image: "./images/my-image.jpg"
layout: "single.html"
draft: false
---
<!-- 
  'image:' bezieht sich auf ein Bild, das als Hauptbild für diese Seite
           Verwendung finden soll. Wenn diese Angabe fehlt, wird im 
           Layout darauf Rücksicht genommen.
  'layout:' Außer dem Standard-Layout 'single' können "left-image" bzw.
           "right-image" ausgewählt werden.           
-->
