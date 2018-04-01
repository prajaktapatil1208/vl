var express = require('express');
var app = express();

var execPHP = require('./execphp.js')();

//execPHP.phpFolder = 'C:\\Users\\Martin\\Desktop\\Dropbox\\Mediumprojects\\phpinnode\\phpfiles\\';
execPHP.phpFolder = 'C:\\xampp\\htdocs\\project\\compiler';

app.use('*.php',function(request,response,next) {
	execPHP.parseFile(request.originalUrl,function(phpResult) {
		response.write(phpResult);
		response.end();
	});
});

app.listen(8081, function () {
	console.log('Node server listening on port 8081!');
});