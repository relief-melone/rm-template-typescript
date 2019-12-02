import express from 'express';
import expressConfig from './src/configs/config.express';
import authenticatorConfig from './src/configs/config.authenticator';
import cookieParser from 'cookie-parser';
import sessionPopulate from 'rm-session-populator';


import { connectToDb } from  './src/services/mongodb/service.mongodbConnector';
import routePermissions from './src/routes/route.permissions';
import routeRoleAssignments from './src/routes/route.roleAssignments';
import routeRoles from './src/routes/route.roles';
import routeMain from './src/routes/route.main';

const app = express();

app.use(express.json());
app.use(express.urlencoded({
  extended: true
}));

app.use(cookieParser());
app.use(sessionPopulate(authenticatorConfig));

// Connect To Database
connectToDb();

// Routes
app.use('/api/admin/permissions', routePermissions);
app.use('/api/admin/roles', routeRoles);
app.use('/api/admin/roleAssignments', routeRoleAssignments);
app.use('/api/v1', routeMain);
app.use('/', (req,res,next) => res.send('<h1>Authorizor is running!</h1>'));

app.listen(expressConfig.httpPort, () => {
  console.log(`HTTP Server listening on ${expressConfig.httpPort}`);
});

