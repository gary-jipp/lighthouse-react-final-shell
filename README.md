# Shell-React-Express

React-Express Shell app ready for node deployment to Heroku or other similar platforms.  React and Express code are separate mini-projects and build/deployment is handled by the top level package.json

When the React App starts, it makes a single API call to the API server for the version number and renders that, or an error if API call was unsucessful

Example deployment branch for "render" cloud platform

Built for node 16 or 18

### Setup
Copy `env.example` to `.env` to override the default env values.
See server `README.md` for details

### Render Cloud Service
- https://render.com/
- https://dashboard.render.com/

### Edit Repos that Render can see
- Github -> User Settings
- Integrations.Applications
- Render - Configure

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