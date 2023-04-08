# In this project, the list of Premier League teams and games is stored in the database through API, and the results of the games are updated live in the table.

## Getting Started

#### Symfony Docker

A [Docker](https://www.docker.com/)-based installer and runtime for the [Symfony](https://symfony.com) web framework, with full [HTTP/2](https://symfony.com/doc/current/weblink.html), HTTP/3 and HTTPS support.

![CI](https://github.com/dunglas/symfony-docker/workflows/CI/badge.svg)

------------

1. If not already done, [install Docker Compose](https://docs.docker.com/compose/install/) (v2.10+)
2. Run `docker compose build --pull --no-cache` to build fresh images
3. Run `docker compose up` (the logs will be displayed in the current shell)
4. Open `https://localhost` in your favorite web browser and [accept the auto-generated TLS certificate](https://stackoverflow.com/a/15076602/1352334)
5. Run `docker compose down --remove-orphans` to stop the Docker containers.

------------

#### Footbal API

##### Please find the source database in the app.sql file

By executing the command below in console, all the specified league information will be entered into the database
`php bin/console app:get-matches`
You can also change the league and season
This change is done in the following URL  [click here](/src/branch/master/src/Command/GetMatchCommand.php "click here")

https://api-football-v1.p.rapidapi.com/v3/fixtures?league=**61**&season=**2022**

------------

The second command saves the results of the games in the database
Please set this command in crontab server to run periodically
`php bin/console app:get-matches-result`

For save team in to database
`php bin/console app:get-league-team`

------------
