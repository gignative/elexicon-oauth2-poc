daemon off;
error_log /dev/stdout info;

events {
}

http {
  access_log /dev/stdout;
  include    /etc/nginx/mime.types;
  default_type application/octet-stream;

  server {
    listen       8081;
    server_name  localhost;

    location / {
        root   $ROOT;
        index  index.html index.htm;
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
  }

  server {
    listen       8080;
    server_name  localhost;

    # location / {
    #     root   /usr/share/nginx/html;
    #     index  index.html index.htm;
    # }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }

    location / {
        proxy_pass http://127.0.0.1:4180;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Scheme $scheme;
        proxy_connect_timeout 1;
        proxy_send_timeout 30;
        proxy_read_timeout 30;
    }
  }
}