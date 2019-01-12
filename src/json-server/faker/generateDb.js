const jsf = require('json-schema-faker');
const faker = require('faker');
const schema = require('./schema/dbSchema');
const fs = require('fs');

jsf.extend('faker', () => faker);
const data = JSON.stringify(jsf.generate(schema), null, 2);

fs.writeFile(`${__dirname}/../db.json`, data, e => e ? console.log(e) : console.log('Data generated'));
