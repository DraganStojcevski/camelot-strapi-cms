const express = require('express');
const app = express();

// Set environment variables
process.env.NODE_ENV = 'development';
process.env.HOST = '0.0.0.0';
process.env.PORT = '1337';
process.env.DATABASE_CLIENT = 'mysql2';
process.env.DATABASE_HOST = 'localhost';
process.env.DATABASE_PORT = '3306';
process.env.DATABASE_NAME = 'camelotw_cms';
process.env.DATABASE_USERNAME = 'camelotw_cms';
process.env.DATABASE_PASSWORD = 'U*HwDBhi(=yG-%YR';
process.env.JWT_SECRET = 's0Y9O3sbwgNHbIomOJwAqA==';
process.env.APP_KEYS = 'A8BrBWWZ3iguAYWRArP0eg==,h1iZKmt7d6D2brHU7j1Nqw==,e0HsDKbTy4zG+ioXb1vmJw==,KV5+G0VfIzTYs9AhL09iUg==';
process.env.API_TOKEN_SALT = 'BAxzcnUIqUy/cGmnd9kwiw==';
process.env.ADMIN_JWT_SECRET = '/cmiI6Bg8H98VzadhkcsKw==';
process.env.TRANSFER_TOKEN_SALT = 'DcOWlJy+uWszBWAcq2Sp8g==';

// Simple test route
app.get('/', (req, res) => {
  res.send('Strapi CMS is running!');
});

app.get('/admin', (req, res) => {
  res.send('Admin panel - Login: admin@camelotwheel.org / Admin123!');
});

// Start Strapi
const strapi = require('@strapi/strapi')();
strapi.start().then(() => {
  console.log('Strapi started successfully');
}).catch(err => {
  console.error('Strapi failed to start:', err);
});

const PORT = process.env.PORT || 1337;
app.listen(PORT, () => {
  console.log();
});
