FROM python:3.10-buster as builder
WORKDIR /usr/src/app
COPY cli.pex cli.pex

RUN mkdir bin
RUN PEX_TOOLS=1 python cli.pex venv --compile cli

FROM python:3.10-buster
WORKDIR /usr/src/app
RUN mkdir bin
COPY --from=builder /usr/src/app/cli cli
