.PHONY: up
up:
	docker-compose up -d postgres
	mix deps.get

.PHONY: down
down:
	docker-compose down
	docker volume rm $$(docker volume ls -q | grep multi_termo)

.PHONY: ci-checks
cc:
	@echo "Executing CI Checkings"
	mix compile --warnings-as-errors
	MIX_ENV=test mix test
	mix format
	mix format --check-formatted
	mix credo --strict
	@echo "Ready to CI!!!🚀🚀🚀"
