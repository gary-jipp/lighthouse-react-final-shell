# Shell-React-Express

React-Express Shell app ready for node deployment to a cloud platform.  React and Express code are separate mini-projects and build/deployment is handled by the top level package.json

When the React App starts, it makes a single API call to the API server for the version number and renders that, or an error if API call was unsucessful

Built for node 18

### Environment Setup (don't skip this!)
Copy `env.example` to `.env` to override the default env values.
See server `README.md` for details

### Database Setup
- Database must be running before starting the server app
- Details for local database in server `README.md`
- don't use a container database unless you really want a challenge

### Starting as a Single App (for Production only)
```bash
npm run build
npm start
```
Browse to http://localhost:8080

### Starting as Individual Apps (for Development)
```bash
cd server
npm install
npm run local

cd client
npm install
npm start
```

### Render Cloud Service
- https://render.com/
- https://dashboard.render.com/

### Edit Repos that Render can see
- Github -> User Settings
- Integrations.Applications
- Render - Configure