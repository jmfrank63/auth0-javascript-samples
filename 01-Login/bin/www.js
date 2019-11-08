const https = require('https');
const fs = require('fs');
const app = require('../server')

const port = 3000;
const key = './certs/common-work-education.co.uk.key';
const cert = './certs/common-work-education.co.uk.crt';
const passPhrase = '';

// we will pass our 'app' to 'https' server
https.createServer({
    key: fs.readFileSync(key),
    cert: fs.readFileSync(cert),
    passphrase: passPhrase
}, app)
.listen(port, () => console.log(`Server running on port ${port}`));
