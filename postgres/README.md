# Container Database Setup

Only use this if you want to implement a docker/podman container as your postgres database instance.  Otherwise just use the usual schema & seeds included in the `server/database` directory

can use either `docker` or `podman` (recommended). The commands are the same

- `podman build -t postgres-demo .`
- `podman run  --replace -d --rm --name demodb --env-file .env.demo -p 5432:5432 postgres-demo`
