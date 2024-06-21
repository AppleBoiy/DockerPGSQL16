# CS321-Postgres

This repository contains the Dockerfile for PostgreSQL 16.3, tailored for the CS321 course.

## Docker Image Details

- **PostgreSQL Version**: 16.3
- **Default Port**: 5432
- **Default User**: postgres
- **Default Password**: postgres
- **Default Database**: postgres

## Getting Started

### Pulling the Pre-built Docker Image

To pull the pre-built Docker image, execute the following command:

```sh
docker pull ghcr.io/appleboiy/pg16-cs321:latest
```

### Building the Docker Image from Source

To build the Docker image yourself, follow these steps:

1. Clone the repository:

    ```sh
    git clone git@github.com:AppleBoiy/DockerPostgreSQL16.git
    ```

2. Navigate to the repository directory:

    ```sh
    cd DockerPostgreSQL16
    ```

3. Build the Docker image using `make`:

    ```sh
    make build
    ```
## Connecting to PostgreSQL


You can connect to the PostgreSQL database using any PostgreSQL client, such as `psql`:

```sh
psql -h localhost -U postgres -d postgres
```

## Custom Configuration

If you need to add custom configuration to PostgreSQL, you change the `docker-compose.yml` file to change `db name`, `db user`, `db password`, and `db port`.

```docker-compose.yml
name: "postgres16"
services:
  database:
    container_name: postgres16
    image: postgres:16.3-alpine3.20
    ports:
      - "5432:5432"
    volumes:
      - ./postgres_data:/var/lib/postgresql/data/
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=postgres
      - POSTGRES_DB=postgres
    restart: unless-stopped
volumes:
  postgres_data:
```
