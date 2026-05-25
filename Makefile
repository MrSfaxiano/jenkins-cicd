.PHONY: up down restart logs build clean ps

up:
	docker compose up -d --build

down:
	docker compose down

restart:
	docker compose restart $(s)

logs:
	docker compose logs -f $(s)

build:
	docker compose build --no-cache

ps:
	docker compose ps

clean:
	docker compose down -v --remove-orphans

open:
	open http://localhost:8080 || xdg-open http://localhost:8080
