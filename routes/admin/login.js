var express = require('express');
var router = express.Router();
var UsuariosModel = require('./../../models/usuariosModel');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('admin/login', {
    layout: 'admin/layout'
  });
});

router.post('/', async (req, res, next) => {
  try {
    var Usuario = req.body.usuario;
    var password = req.body, password;

    var data = await usuariosModel.getUserByUsernameAndPassword(usuario, contrasena);

    if (data != undefined) {
      res.redirect('/admin/novedades');
    } else {
      res.render('admin/login', {
        layout: 'admin/layout',
        error: true
      }); 
    }
 } catch (error) {
  console.log(error);
 }
})

module.exports = router;