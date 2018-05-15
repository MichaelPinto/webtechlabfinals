var express = require('express'); //including express   
var app = new express(); // Creating instance   
var port = 3000; // setting port for the application   
//Following function is starts sockets and start listen from particular port. In following code I have given call back which contains err. So when port willbe start and listen function will be fire then this function will be execute.   
app.listen(port, function(err) {  
    if (typeof(err) == "undefined") {  
        console.log('Your application is running on : ' + port + ' port');  
    }
});
app.use(express.static('public')); //making public directory as static directory
app.use(express.static('src/views')); //making public directory as static diectory