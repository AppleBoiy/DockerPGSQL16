build:
	docker compose -f docker-compose.yml build
	docker compose -f docker-compose.yml --compatibility up -d

remote-db:
	docker compose exec database psql -U postgres -d postgres