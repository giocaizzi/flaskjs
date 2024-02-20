# flaskjs-dev

This is a bash project to run Flask and JS client frameworks (Next.js) in two separate screens concurrently and be able to control their settings for developement purposes.

> Note
> Remember to **make scripts executable**!
> `chmod +x /path/to/flaskjs-dev/*`
>
> And to **add the `PATH` variable** to `~/.bashrc`, `~/.zshrc`, etc.
> `export PATH="/path/to/flaskjs-dev:$PATH"`

## Basics

This scripts are optimized for the monorepos with `server` and `client` folders.

Args:
- 

## Environment variables

This scripts are thought to be used in conjunction with an env file containing the developement parameters.

.env file
- FLASK_APP
- PORT_CLIENT
- PORT_SERVER