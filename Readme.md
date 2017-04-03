# sshd

Baseed on [sickp/alpine-sshd](https://github.com/sickp/docker-alpine-sshd)

Disables root login and forces the creation of a user specified via the environement variables `USER_NAME` and `USER_PASSWORD`.

Environment Variables:

- `USER_NAME`
- `USER_PASSWORD`
