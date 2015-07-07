FROM mhart/alpine-node:0.12.2

RUN npm install frontail@2.1.1 --global

ENTRYPOINT ["frontail"]
EXPOSE 9001
CMD ["--help"]
