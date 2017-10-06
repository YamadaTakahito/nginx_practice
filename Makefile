dev:
	docker build -t nginx_practice ./
	docker run -d -p 8000:80 --name nginx_practice nginx_practice
	docker exec -it nginx_practice bash

devclose:
	docker stop nginx_practice
	docker rm nginx_practice
