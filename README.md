

# Samplebot

Sampleblot is a sample Telegram bot implemented in Python. It serves as an example of a piece of software that can be deployed using Docker.


## Installation


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
