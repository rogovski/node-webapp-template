import express from 'express';
import http from 'http';
import path from 'path';
import config from './config';


/**
 * call various server constructors
 */
const app = express();
const server = http.Server(app);


/**
 * use ejs as template engine
 */
app.set('view engine', 'ejs');
app.set('views', 'www/templates');


/**
 * serve static content
 */
app.use(express.static('www/public'));


/**
 * render index.ejs
 */
app.get('/', (req, res) => {
  res.render('index');
});


/**
 * start server
 */
server.listen(config.port, () => {
  console.log('SERVER RUNNING.');
});
