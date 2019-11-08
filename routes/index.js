const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Name, Year, Rating, avatar FROM switch_games";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        // console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { people: result });
    })
})

router.get('/users/:id', (req, res) => {
    console.log('at the user route');
    console.log(req.params.id);

    let query = `SELECT * FROM switch_games WHERE ID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }
    
        console.log(result); // should see objects wrapped in an array
    
         //render the home view with dynamic data
        res.render('home', { people: result });
    })

})


module.exports = router;