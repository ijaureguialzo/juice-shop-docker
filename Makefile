#!make

help: _header
	${info }
	@echo Opciones:
	@echo ----------------------
	@echo start / stop / restart
	@echo update
	@echo logs
	@echo clean
	@echo ----------------------

_header:
	@echo ----------------
	@echo OWASP Juice Shop
	@echo ----------------

_urls:
	${info }
	@echo ----------------------------------------
	@echo [OWASP Juice Shop] http://localhost:3000
	@echo ----------------------------------------

_start-command:
	@docker compose up -d

start: _start-command _urls

stop:
	@docker compose stop

restart: stop start

update:
	@docker compose pull

logs:
	@docker compose logs

clean:
	@docker compose down -v --remove-orphans
