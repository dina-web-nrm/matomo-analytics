# matomo-analytics


## inspired by
- https://www.digitalocean.com/community/tutorials/how-to-install-matomo-web-analytics-on-ubuntu-20-04 

## standalone proxy

### docker-compose.yml

``` 
version: '3.7'

services:

  proxy:
    image: nginxproxy/nginx-proxy:0.8.0
    container_name: jwilder-proxy
    restart: always
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - /var/run/docker.sock:/tmp/docker.sock:ro
      - ./certs:/etc/nginx/certs:ro
      - ./nginx-proxy.conf:/etc/nginx/conf.d/nginx-proxy.conf:ro

networks:
  default:
    external:
       name: proxy_default
```
