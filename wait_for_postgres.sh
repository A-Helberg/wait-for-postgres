COUNTER=0

while [  $COUNTER -lt 10 ]; do
  echo Try number $COUNTER
  let COUNTER=COUNTER+1
  response=`psql -U postgres -h $POSTGRES_PORT_5432_TCP_ADDR -t -c "select now()" postgres`

  if [ $? == 0 ]; then
    echo Postgres is up!
    break
  fi
  echo Waiting 1s to try again
  sleep 1s
done
