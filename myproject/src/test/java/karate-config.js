function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    apiUrl:'https://conduit.productionready.io/api/'
  }
  if (env == 'dev') {
    config.email='abcd1234@test.com'
    config.password='abcd1234'
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}