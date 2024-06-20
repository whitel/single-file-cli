FROM zenika/alpine-chrome:with-node

RUN npm install --omit=dev single-file-cli

WORKDIR /usr/src/app/node_modules/single-file-cli

ENV LANG C.UTF-8

ENTRYPOINT [ \
    "node", \
    "./single-file-node.js", \
    "--browser-executable-path", "/usr/bin/chromium-browser", \
    "--output-directory", "./../../out/", \
    "--dump-content" ]
