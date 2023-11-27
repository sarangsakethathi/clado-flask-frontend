server {
    listen 80;
    server_name _;
    root /var/www/oxer-html;  # Replace with your site's actual root directory

    index index.html index.htm;

    access_log /dev/stdout combined;
    error_log /dev/stdout;

    location / {
        try_files $uri $uri/ =404;
    }
}
