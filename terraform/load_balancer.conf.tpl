upstream webs {
   server ${web-0-ip}:443;
   server ${web-1-ip}:443;
   server ${web-2-ip}:443;
}

server {
    listen 80;
    server_name _;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl http2;
    server_name _;

    access_log /var/log/nginx/web.access.log;
    error_log /var/log/nginx/web.error.log;

    ssl_certificate /etc/nginx/nginx-selfsigned.crt;
    ssl_certificate_key /etc/nginx/nginx-selfsigned.key;

      location / {
        proxy_pass https://webs/;
        proxy_set_header Host $host;
        proxy_set_header X-Forwarded-Host $server_name;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Protocol "https";
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
      }
}