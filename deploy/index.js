
module.exports = ({
  serviceName: 'Global Resources',

  terraformBackendConfiguration: {
    serviceName: 'global-resources',
    bucket: 'tfstate-floor13',
    region: 'eu-central-1'
  },

  awsConfiguration: [
    {
      region: 'eu-central-1',
      profile: 'default',
    },
  ],
});