const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: "http://localhost:3025",
    pageLoadTimeout: 120000, // Increase to 2 minutes
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
    specPattern: "e2e/**/*.cy.{js,jsx,ts,tsx}",
    supportFile: "support/e2e.js",
  },
});
