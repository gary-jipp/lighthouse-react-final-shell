# Express Server

###  Initialize Database
- Open `psql`
- `CREATE DATABASE demo` (or whatever name you want to use)
- `\i database/00-schema.sql`
- `\i database/01-seeds.sql` (if you want to load seeds)

###  Setup Dev Environment
- copy `env.example` to `.env` and edit to match your database credentials
