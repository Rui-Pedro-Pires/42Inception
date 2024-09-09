all:
	@cd ./srcs && docker compose down
	@cd ./srcs && docker compose up --build -d

down:
	@cd ./srcs && docker compose down

clean:
	docker system prune -a

volume_clean:
	docker volume prune -a

fclean: down clean volume_clean