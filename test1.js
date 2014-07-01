var spawn = require('docker-spawn');

spawn( 'localhost',  {
   image: 'tutum/wordpress',
   ports: [ '49310:8080' ],
  remove: true
}, work);

function work(err, exposed, stop) {
console.log( 'started' ); 
 if (err) throw err;


}

