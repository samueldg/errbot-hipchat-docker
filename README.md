# Errbot x Hipchat x Docker

[Errbot](http://errbot.io) in a Docker image with all the dependencies to interact with a HipChat backend.

## Running the server

On a machine with Docker, simply run the following, with the variables set accordingly:

```shell
 docker run -d \
            --name errbot \
            -v $HOST_PLUGINS_DIRECTORY:/errbot/plugins \
            -v $HOST_DATA_DIRECTORY:/errbot/data \
            -e BOT_USERNAME=$BOT_USERNAME \
            -e BOT_PASSWORD=$BOT_PASSWORD \
            -e BOT_TOKEN=$BOT_TOKEN \
            -e BOT_ENDPOINT=$BOT_ENDPOINT \
            -e CHATROOM_PRESENCE=$CHATROOM_PRESENCE \
            -e CHATROOM_FN=$CHATROOM_FN \
            samueldg/errbot-hipchat
```

You can also use a custom `config.py` file, by simply placing it in your `$HOST_DATA_DIRECTORY` and running:

```shell
 docker run -d \
            --name errbot \
            -v $HOST_PLUGINS_DIRECTORY:/errbot/plugins \
            -v $HOST_DATA_DIRECTORY:/errbot/data \
            samueldg/errbot-hipchat \
            errbot --config /errbot/data/config.py
```

## Configuration

Please refer to Errbot's self-documentated [config template](https://github.com/errbotio/errbot/blob/master/errbot/config-template.py).

The config shipping with this image comes with sensible defaults, but the following have to be provided at runtime:
- `BOT_USERNAME`
- `BOT_PASSWORD`
- `BOT_TOKEN`
- `BOT_ENDPOINT`
- `CHATROOM_PRESENCE`
- `CHATROOM_FN`

The following can also, optionally, be set at runtime:
- `BOT_ADMINS`
- `BOT_LOG_LEVEL`
- `BOT_PREFIX`

## References

- [Errbot GitHub repository](https://github.com/errbotio/errbot)
- [Errbot official documentation](https://errbot.io/en/latest/)
