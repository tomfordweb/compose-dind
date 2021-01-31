# Introduction

This image includes a few extra helpful utilities such as `jq`, `python`, and `curl`

# Use

On whatever stage you need compose on, add the following image and services. I have included some compose examples for you.


```yml
build something cool:
  stage: build
  image: $CI_REGISTRY/tfwg/compose-dind:latest
  services:
    - docker:dind
  script:
    - docker-compose -f docker-compose.yml -f docker-compose.production.yml build
    - docker-compose -f docker-compose.yml -f docker-compose.production.yml push

test something cool:
  stage: test
  image: $CI_REGISTRY/tfwg/compose-dind:latest
  services:
    - docker:dind
  script:
    - docker-compose run my-app test
```
