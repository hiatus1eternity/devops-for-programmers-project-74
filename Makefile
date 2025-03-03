build:
	docker compose -f docker-compose.yml build

lint:
	docker compose -f docker-compose.yml run app make lint

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

run:
	docker run -p 8080:8080 -e NODE_ENV=development architecture2/devops-for-programmers-project-74 make dev