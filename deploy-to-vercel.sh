#!/bin/bash

echo "🚀 Deploying Strapi CMS to Vercel..."

# Check if vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "Installing Vercel CLI..."
    npm install -g vercel
fi

# Login to Vercel (if not already logged in)
echo "Logging in to Vercel..."
vercel login

# Deploy to Vercel
echo "Deploying to Vercel..."
vercel --prod

echo "✅ Deployment complete!"
echo ""
echo "Next steps:"
echo "1. Go to Vercel Dashboard"
echo "2. Set environment variables"
echo "3. Configure custom domain"
echo ""
echo "Environment variables to set:"
echo "- DATABASE_HOST: 172.104.149.91"
echo "- DATABASE_NAME: camelotw_cms"
echo "- DATABASE_USERNAME: camelotw_cms"
echo "- DATABASE_PASSWORD: U*HwDBhi(=yG-%YR"
echo "- APP_KEYS: A8BrBWWZ3iguAYWRArP0eg==,h1iZKmt7d6D2brHU7j1Nqw==,e0HsDKbTy4zG+ioXb1vmJw==,KV5+G0VfIzTYs9AhL09iUg=="
echo "- API_TOKEN_SALT: BAxzcnUIqUy/cGmnd9kwiw=="
echo "- ADMIN_JWT_SECRET: /cmiI6Bg8H98VzadhkcsKw=="
echo "- TRANSFER_TOKEN_SALT: DcOWlJy+uWszBWAcq2Sp8g=="
echo "- JWT_SECRET: s0Y9O3sbwgNHbIomOJwAqA=="
