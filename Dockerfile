FROM mhart/alpine-node:6.14.2

RUN apk add --no-cache git
RUN npm install frontail@4.2.0 --global --production

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 9001
CMD ["--help"]
