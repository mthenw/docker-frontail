FROM mhart/alpine-node:8.11.3

RUN apk --no-cache upgrade && apk add --no-cache git
RUN npm install frontail@4.2.1 --global --production

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 9001
CMD ["--help"]
