'use strict';

const apickli = require('apickli');
const {Before, setDefaultTimeout} = require('cucumber');

Before(function() {
    // setting the target server where we have to send the requests
    this.apickli = new apickli.Apickli('https', 'httpbin.org');

    // adding request header that will be sent with each request
    this.apickli.addRequestHeader('Cache-Control', 'no-cache');
});

// setting timeout to 60000 milliseonds = 60 seconds
setDefaultTimeout(60 * 1000);