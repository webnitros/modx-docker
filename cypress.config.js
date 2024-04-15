const {defineConfig} = require('cypress')

module.exports = defineConfig({
    e2e: {
        // We've imported your old cypress plugins here.
        // You may want to clean this up later by importing these.
        setupNodeEvents(on, config) {
            return require('./cypress/plugins/index.js')(on, config)
        },
        baseUrl: 'http://127.0.0.1:59000',
        env: {
            baseUrl: '${CYPRESS_BASE_URL}'
        },
        reporter: 'cypress-teamcity-reporter',
        reporterOptions: {
            configFile: 'reporter-config.json',
        },
        video: true,
        screenshots: true,
        videoCompression: 15,
        userAgent: 'User-Agent: Mozilla/5.0 Cypress-test',
        viewportWidth: 1440,
        viewportHeight: 660
    },
})
