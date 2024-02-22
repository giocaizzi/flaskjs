# flaskjs-dev

This is a **bash** project to run [Flask]() and a JavaScript client framework (eg. [Next.js]()) in two separate screens concurrently and be able to control their settings for developement purposes.

> **Note**
>
> Remember to **make scripts executable**!
> `chmod +x /path/to/flaskjs-dev/*`
>
> And to **add the `PATH` variable** to `~/.bashrc`, `~/.zshrc`, etc.
> `export PATH="/path/to/flaskjs-dev:$PATH"`

## Basics

This scripts are optimized for the monorepos with `server` and `client` folders.

Args:
- `--quit`: quit process
- `--public`: run on network
- `--only-server`: run only server
- `--only-client`: run only client
- `--sdir`: or the equivalent `RUN-DEV_SDIR` env variable
- `--cdir`: or the equivalent `RUN-DEV_CDIR` env variable

## Examples

Assuming that folder paths meet the default, or `RUN-DEV_SDIR` and  `RUN-DEV_CDIR` [envaironmental variables](#environment-variables) are set, to run the app in dev mode:

```shell
flaskjs-dev
```

To quit:
```shell
flaskjs-dev --quit
```

To run only server:
```shell
flaskjs-dev --only-server
```

## Environment variables

This scripts are thought to be used in conjunction with an env file containing the developement parameters.

The `.env ` variables used are:

- `FLASK_APP`
- `PORT_CLIENT` (Optional)
- `PORT_SERVER` (Optional)
- `RUN_DEV_SDIR` (Optional): sets `--sdir`
- `RUN_DEV_CDIR` (Optional): sets `--cdir`