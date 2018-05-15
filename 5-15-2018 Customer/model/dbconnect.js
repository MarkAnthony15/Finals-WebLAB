var mysql = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'cars'
});


connection.connect(function(err) {
  if (err) {
    	console.error('Database error.');
    	return;
  }else{
	  console.log("You have successfully connected to the database.");
  }
});

module.exports = connection;