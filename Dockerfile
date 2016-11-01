FROM alpine

RUN apk add --no-cache postgresql

COPY wait_for_postgres.sh /

CMD /wait_for_postgres.sh
