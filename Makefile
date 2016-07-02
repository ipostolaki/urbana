default: build

build:
	docker-compose build

run:
	docker-compose stop django  # for restart cases, when already running
	docker-compose up

run-detached:
	docker-compose up -d

stop:
	docker-compose stop

migrate:
	docker-compose exec django ./manage.py migrate

migrations:
	docker-compose exec django ./manage.py makemigrations

apply_migrations: migrations migrate

django_bash_exec_current_container:
	docker-compose exec django bash

django_bash_run_another_container:
	docker-compose run --rm django bash

django_shell:
	docker-compose exec django ./manage.py shell_plus

logs:
	docker-compose logs -f --tail=all