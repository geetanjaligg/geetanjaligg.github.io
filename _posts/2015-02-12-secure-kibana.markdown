---
layout: post
title:  'How to secure Kibana with login prompt?'
date:   2015-02-12
categories: kibana elasticsearch
cover: 
---

1. Install nginx server
> sudo apt-get install nginx

2. Create and save certificates in /etc/nginx/ssl
>sudo mkdir /etc/nginx/ssl<br>
>cd /etc/nginx/ssl<br>
>sudo openssl genrsa -des3 -out server.key 1024<br>
>sudo openssl req -new -key server.key -out server.csr<br>
>sudo cp server.key server.key.org<br>
>sudo openssl rsa -in server.key.org -out server.key<br>
>sudo openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt<br>

3. Install  apache2-utils to create passwords using htpasswd
> sudo apt-get install apache2-utils

4. Create password to access Kibana/Elasticsearch 
>sudo htpasswd -c /etc/nginx/conf.d/kibana.htpasswd username

    You can have different password to save Kibana dashboards. 
    >sudo htpasswd -c /etc/nginx/conf.d/kibana-write.htpasswd username

5. Assuming that you've Kibana in /var/www/kibana directory, change `elasticsearch:` line in /var/www/kibana/config.js to `elasticsearch:https://"+window.location.hostname+":443",`

6. Add a new nginx config file
>sudo vi /etc/nginx/sites-available/kibana

    <script src="https://gist.github.com/geetanjaligg/95f54fcd0b06669867a0.js"></script>

7. Disable the default config and enable new config
>sudo rm /etc/nginx/sites-enabled/default<br>
>sudo ln -s /etc/nginx/sites-available/kibana /etc/nginx/sites-enabled/kibana<br>

Open Kibana in your broswer and you get a login prompt. Yay! 




