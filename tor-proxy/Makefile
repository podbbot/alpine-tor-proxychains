monitor: iptables_rules
	sleep 1
	docker exec -it torproxy nyx

shell: iptables_rules
	docker exec -it torproxy /bin/sh

control_docker:
	docker exec -it torproxy nc 127.0.0.1 9051

control:
	nc 127.0.0.1 9051

iptables_rules: up
	docker exec --user root --privileged -it torproxy /bin/sh config/iptables_rules.sh

up:
	docker-compose up -d

clean:
	docker-compose down
