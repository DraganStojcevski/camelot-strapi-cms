// Vercel serverless function for Strapi
const strapi = require('@strapi/strapi')();

module.exports = async (req, res) => {
  try {
    await strapi.start();
    return strapi.app(req, res);
  } catch (error) {
    console.error('Strapi error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};
