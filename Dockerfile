FROM docker:20.10.2

RUN apk update && apk upgrade

RUN apk add curl \
  jq \
  py3-pip \
  python3 \ 
  python3-dev \
  libffi-dev \
  openssl-dev \
  gcc \
  libc-dev \
  make \
  rust


# No clue if/when this will ever get resolved
# https://github.com/pyca/cryptography/issues?q=is%3Aissue+is%3Aclosed
ENV CRYPTOGRAPHY_DONT_BUILD_RUST 1

RUN pip install docker-compose
