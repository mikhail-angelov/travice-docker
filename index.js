var express = require('express');
var app = express();

app.use(express.static(__dirname + '/public'));

var port = process.env.PORT || 7000;
app.listen(port);

console.log('started on ', port);