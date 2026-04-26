// Module Federation across ScholarPath frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "scholarpath_shell",
      remotes: {
        admin: "admin@https://admin.scholarpath.internal/remoteEntry.js",
        partner: "partner@https://partner.scholarpath.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
