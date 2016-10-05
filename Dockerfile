FROM mhart/alpine-node:6.5.0

RUN npm install frontail@4.0.1 --global

ENTRYPOINT ["frontail"]
EXPOSE 9001
CMD ["--help"]
