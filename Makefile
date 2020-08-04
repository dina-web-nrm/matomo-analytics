#! make


up:
	docker-compose -f docker-compose.yml up -d

ps:
	docker-compose -f docker-compose.yml ps

logs:
	docker-compose -f docker-compose.yml logs -f

logs-app:
	docker-compose -f docker-compose.yml logs -f app

