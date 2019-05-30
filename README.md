# Docker Q&A

A docker-compose to get you Q&A web platform instantly ready.

Based on [question2answer](https://github.com/q2a/question2answer).

## Usage

Edit the variables in the `.env` file.

```
git clone https://github.com/flavienbwk/Docker-Q-A
cd Docker-Q-A
git clone https://github.com/q2a/question2answer
mv question2answer/qa-config-example.php question2answer/qa-config.php
docker-compose up -d
```

The NGINX server is launched on port `8080`.

If you encounter a problem with the database (generally a blank page) after you run docker-compose, please check `question2answer/qa-config.php` : .env vars subsitution may have not the right data.

# Features to come

- Auto-backup with CRON for MariaDB.
