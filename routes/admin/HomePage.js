var express = require('express');
var router = express.Router();
var novedadeshpmodel = require('../../models/novdeadeshpModel');


/* GET home page. */
router.get('/', async function (req, res, next) {

    var novedades = await novedadeshpmodel.getNovedades();
    res.render('admin/HomePage', {
        layout: 'admin/layout',
        persona: req.session.nombre,
        novedades
    });
});

router.get('/agregar', (req, res, next) => {
    res.render('admin/agregar', {
        layout: 'admin/layout'
    })
});

router.post('/agregar', async (req, res, next) => {
    try {
        if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
            await novedadeshpmodel.insertNovedad(req.body);
            res.redirect('admin/novedades')
        } else {
            res.render('admin/agregar', {
                layout: 'admin/layout',
                error: true,
                message: 'Todos los campos deben ser completados'
            })
        }
    } catch (error) {
        console.log(error)
        res.render('admin/agregar', {
            layout: 'admin/layout',
            error: true,
            message: 'No se detecto la carga del contenido'
        })
    }
})

module.exports = router;