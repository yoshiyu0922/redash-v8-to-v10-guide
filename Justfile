create-db:
    docker-compose run --rm server create_db

run:
    docker compose up server scheduler scheduled_worker adhoc_worker redis postgres
