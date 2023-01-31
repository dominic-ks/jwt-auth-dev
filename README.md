# Docker Compose Dev Setup for JWT Auth WordPress Plugin

- Docker Compose Quick Start for the [JWT Auth Plugin](https://wordpress.org/support/plugin/jwt-auth/)

## Setup

`$ git submodule init && git submodule update`

`$ docker-compose run --rm composer install`

`$ docker-compose up`

`$ docker-compose run --rm wpcli core install --url=http://localhost:9001 --title="<site-title>" --admin_user=<user-name> --admin_email=<admin-email> --admin_password=<password>`

`$ docker-compose run --rm wpcli rewrite structure '/%postname%/'`

`$ docker-compose run --rm wpcli plugin activate jwt-auth`

## Remove containers
`$ docker rm $(docker ps --filter status=exited --filter name=jwt-auth -q)`