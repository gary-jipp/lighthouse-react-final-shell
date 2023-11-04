# Shell-React-Express

React-Express Shell app ready for node deployment to Heroku or other similar platforms.  React and Express code are separate mini-projects and build/deployment is handled by the top level package.json

When the React App starts, it makes a single API call to the API server for the version number and renders that, or an error if API call was unsucessful

Example deployment branch for "render" cloud platform

### Built for node 16

Copy `env.example` to `.env` to override the default env values
https://render.com/
https://dashboard.render.com/
#### Edit Repos that Render can see
- Github -> User Settings
- Integrations.Applications
- Render - Configure


###  Initialize Database
- Open `psql`
- `CREATE DATABASE <name>` (where name is the name you want to use)
- `\i database/00-schema.sql`
- `\i database/01-seeds.sql` (if you want to load seeds)


### Starting as a Single App (for Production only)
```
npm install
npm run build
npm start
```

### Starting as Individual Apps (for Development)
```
cd server-express
npm install
npm run local

cd client-react
npm install
npm start
```