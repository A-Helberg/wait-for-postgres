# Rationale

The script `wait_for_postgres.sh` simply loops 10 times and sleeps 1s between each loop, trying to connect to postgres on each loop.
It exits on a successful connection to postgres.

The script expects an Environment varibale, `POSTGRES_PORT_5432_TCP_ADDR`, that contains the hostname or IP of the postgres instance you want to test against. It assumes that the username and password are both "postrges" and that it is running of the default pg port (5432)

# Usage

`docker run -d --name mypostgres postgres`

`docker run --rm --link mypostgres:postgres ahelberg/wait-on-postgres`

`echo Postgres is now running and accepting connections!`

# Contributing

The are a few env vars that can be added to the script, but this suffices for my needs right now.

### PRs are welcome!
