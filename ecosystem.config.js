module.exports = {
  /**
   * Application configuration section
   * http://pm2.keymetrics.io/docs/usage/application-declaration/
   */
  apps : [
    // First application
    {
      name : 'newBlog',
      script : './index.js',
      node_args: '--harmony',
      env : {
        NODE_ENV: 'production'
      },
    }
  ]
};
