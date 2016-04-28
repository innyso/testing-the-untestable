rebuild-all:
	docker-compose stop && yes | docker-compose rm && docker-compose build && docker-compose up -d

update-nginx-config:
	docker exec demo_nginx_1 nginx -s reload

run-rspec:
	docker-compose start spec
	sleep 2s
	cat rspec-result.xml
