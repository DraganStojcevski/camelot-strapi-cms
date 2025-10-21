#!/bin/bash
cd /home4/camelotw/cms/strapi-app
export NODE_ENV=production
export HOST=0.0.0.0
export PORT=1337
export DATABASE_CLIENT=mysql2
export DATABASE_HOST=localhost
export DATABASE_PORT=3306
export DATABASE_NAME=camelotw_cms
export DATABASE_USERNAME=camelotw_cms
export DATABASE_PASSWORD='U*HwDBhi(=yG-%YR'
export JWT_SECRET=s0Y9O3sbwgNHbIomOJwAqA==
export APP_KEYS=A8BrBWWZ3iguAYWRArP0eg==,h1iZKmt7d6D2brHU7j1Nqw==,e0HsDKbTy4zG+ioXb1vmJw==,KV5+G0VfIzTYs9AhL09iUg==
export API_TOKEN_SALT=BAxzcnUIqUy/cGmnd9kwiw==
export ADMIN_JWT_SECRET=/cmiI6Bg8H98VzadhkcsKw==
export TRANSFER_TOKEN_SALT=DcOWlJy+uWszBWAcq2Sp8g==
exec node ./node_modules/@strapi/strapi/bin/strapi.js start
