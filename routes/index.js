var express = require('express');
var router = express.Router();

/* GET Novedades. */
router.get('/', function (req, res, next) {
  res.redirect('/admin/login');
});

module.exports = router;
