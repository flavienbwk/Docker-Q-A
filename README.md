# Docker Q&A

A docker-compose to get you Q&A web platform instantly ready.

Base on [question2answer](https://github.com/q2a/question2answer).

## Usage

Modify the variables in the `.env` file.

```
docker-compose up -d
```

The NGINX server is launched on port `8080`.

If you encounter a problem with the database (generally a blank page) after you run docker-compose, please check `question2answer/qa-config.php` : .env vars subsitution may have not the right data.

# Features to come

- Auto-backup with CRON for MariaDB.