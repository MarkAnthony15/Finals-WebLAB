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

app.use(express.static('./public'));

//Cookie Sessions
app.use(cookieParser());
app.use(session({
    secret: 'seceret',
    resave: false,
    duration: 30 * 60 * 1000,
    saveUninitialized: true,
    activeDuration: 5 * 60 * 1000,
}));

app.get('/', function (req, res) {
    res.render('index', {});
});

app.get('/profile', function (req, res, next) {
    var user = req.session.user;

    res.render('profile', { user });
});





app.set('port', process.env.PORT || 3001);
app.use('/static', express.static('public'));

app.listen(3001);
console.log("You are listening to port 3001.");

