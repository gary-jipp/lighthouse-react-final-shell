# Container Database Setup

- `podman build -t postgres-demo .`
- `podman run  --replace -d --name demodb --env-file .env.demo -p 5432:5432 postgres-demo `
