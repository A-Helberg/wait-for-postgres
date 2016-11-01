# Rationale

The script `wait_for_postgres.sh` simple loops 10 times and sleeps 1s between each loop and then tries to connect to postgres.
It exists on a successful connection to postgres.

The sciprt expects an Environment varibale `POSTGRES_PORT_5432_TCP_ADDR` that contains the hostname or IP of the postgres instance you want to test against.

# Usage

`docker run -d --name mypostgres postgres`
`docker run --rm --link mypostgres:postgres wait-on-postgres`
`echo Postgres is now running and accepting connections!`
