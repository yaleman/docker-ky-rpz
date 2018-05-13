# A dockerized install of [ky-rpz](https://github.com/yaleman/ky-rpz)

## Updating RPZ

The codebase automatically updates itself every hour with cron.

To manually update the codebase within the running container, run `docker exec <container> /opt/update` 

## Bugs

Please file bugs directly relating to the docker container in the [bitbucket repo here](https://bitbucket.org/yaleman/docker-ky-rpz/issues?status=open). If it's something to do with the functionality of the ky-rpz code, please use the [github issues page here](https://github.com/yaleman/ky-rpz/issues).

## Support

Please note, this is not intended for production and I can't be held responsible for anything that goes wrong. Anything good that happens, please blame me entirely. This was built as a proof of concept and shouldn't be considered usable.