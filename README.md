

# Samplebot

Sampleblot is a sample Telegram bot implemented in Python. It serves as an example of a piece of software that can be deployed using Docker.

Your objective is to create a Dockerfile and a docker-compose.yml to build and run a Docker image running the bot.

You can check out the solution in the "solution" branch of this repository.


## Installation

> Important! You will need to get a Telegram bot token from [@BotFather](https://t.me/BotFather) and store it in an environment variables file named ".env" like this: 
>
> ```
> TELEGRAM_TOKEN=YourTelegramToken
> ```


### Local

1. Install dependencies

    ```Bash
    pip install -r requirements.txt
    ```

2. Load environment variables

    1. For GNU/Linux systems:
   
       ```Bash
       source .env
       ```

    2. For Windows systems: 

        ```Bash
        get-content .env | foreach {
            $name, $value = $_.split('=')
            set-content env:\$name $value
        }
        ```


### Docker vanilla

If only we had a Dockerfile...

```Bash
docker build -t samplebot
docker run -d --name samplebot --env-file .env -v repo_path/samplebot/data:/app/data samplebot
```


### Docker with compose

If only we had a Dockerfile and a docker-compose.yml ...

```Bash
docker compose up -d
```
