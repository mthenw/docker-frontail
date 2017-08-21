FROM mhart/alpine-node:6.5.0

RUN apk update && apk upgrade && apk add --no-cache git

RUN npm install frontail@4.0.3 --global

ENTRYPOINT ["frontail"]
EXPOSE 9001
CMD ["--help"]
