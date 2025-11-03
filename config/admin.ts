export default ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET'),
  },
  apiToken: {
    salt: env('API_TOKEN_SALT'),
  },
  transfer: {
    token: {
      salt: env('TRANSFER_TOKEN_SALT'),
    },
  },
  url: env('PUBLIC_ADMIN_URL', '/admin'),
  forceSecureCookie: env.bool('STRAPI_ADMIN_FORCE_SECURE_COOKIE', true),
});
