rebuild-all:
	docker-compose stop && yes | docker-compose rm && docker-compose build && docker-compose up -d

update-nginx-config:
	docker exec demo_nginx_1 nginx -s reload

run-rspec:
	docker-compose up -d
	sleep 2s
	cat rspec-result.txt

login-concourse:
	fly login -t lite

update-pipeline: login-concourse
	fly sp -t lite -p testing-untestable -c pipeline.yml -n

build-pipeline: login-concourse
	fly tj -t lite -j testing-untestable/run-reverse-proxy-test
	fly watch -t lite -j testing-untestable/run-reverse-proxy-test

update-build-pipeline:
	$(MAKE) update-pipeline
	$(MAKE) build-pipeline
