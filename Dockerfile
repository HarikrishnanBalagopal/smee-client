FROM node:14.13.0-alpine3.12
WORKDIR /smee
COPY ["package.json", "package-lock.json", "index.js", "LICENSE", "./"]
COPY ["bin/smee.js", "bin/smee.js"]
RUN npm install --production
ENTRYPOINT [ "./bin/smee.js" ]
CMD ["-h"]
