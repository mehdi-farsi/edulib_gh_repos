# Edulib GH Repos

The goal is to display public repositories from the `edulib-france` organization.

## Install & Run

```sh
bundle install
```

```sh
whenever --update-crontab
```

Wait a minute (time for the first cronjob to run)

```sh
bin/rails s
```

Finally, visit `http://localhost:3000`.
