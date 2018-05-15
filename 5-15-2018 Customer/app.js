const express = require('express');
const ehb = require('express-handlebars');
const bodyParser = require('body-parser');
const db = require('./model/dbconnect')
const session = require('express-session');
const cookieParser = require('cookie-parser');

const app = express();
const urlendcodedParser = bodyParser.urlencoded({ extended: false })

app.engine('handlebars', ehb({ defaultLayout: 'default' }));
app.set('view engine', 'handlebars');

app.use('/static', express.static('public'));

//Cookie Sessions
app.use(cookieParser());
app.use(session({
    secret: 'seceret',
    resave: false,
    duration: 30 * 60 * 1000,
    saveUninitialized: true,
    activeDuration: 5 * 60 * 1000,
}));


app.get('/index/:uid', function (req, res, next) {
    var uid = req.params.uid
    req.session.uid = uid;

    db.query("Select * from customers where uid=?",
        [uid], function (err, rows, fields) {
            if (err)
                console.log("Error in Query");
            else {
                user = rows;
                req.session.user = user;
            }
        });
});

app.get('/profile', function (req, res, next) {
    var user = req.session.user;

    res.render('profile', { user });
});

app.post('/profile1', urlencodedParser, function (req, res) {

    var user = req.session.user;

    var items = {
        firstname: req.body.firstname,
        lastname: req.body.lastname,
        username: req.body.username,
        password: req.body.password,
        mobile: req.body.mobile,
        email: req.body.email,
        gender: req.body.gender,
        birthday: req.body.birthday,
        picture: req.body.picture
    }
    console.log(items);


    db.query("UPDATE user set ? where uid=?", [items, user[0].uid], function (err, rows, fields) {
        if (err)
            console.log(err);
        else {
        }
    });
    res.redirect('/index/' + user[0].uid);
});

app.set('port', process.env.PORT || 3001);
app.use('/static', express.static('public'));

app.listen(3001);
console.log("You are listening to port 3001.");

