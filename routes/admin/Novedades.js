var express = require('express');
var router = express.Router();
var novedadesModel = require('./../../models/novedadesModel');
var util = require('util');
var cloudinary = require('cloudinary').v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy = util.promisify(cloudinary.uploader.destroy);

/* GET home page. */
router.get('/', async function (req, res, next) {

    var novedades = await novedadesModel.getNovedades();

    novedades = novedades.map(novedad => {
        if (novedad.img_id) {
            const imagen = cloudinary.image(novedad.img_id, {
                width: 300,
                height: 200,
                crop: 'fill'
            });
            return {
                ...novedad,
                imagen
            }
        } else {
            return {
                ...novedad,
                imagen:''
                
            }
        }
    });

    res.render('admin/Novedades', {
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

        var img_id = '';
        if (req.files && Object.keys(req.files).length > 0) {
            imagen = req.files.imagen;
            img_id = (await uploader(imagen.tempFilePath)).public_id;
        }

        if (req.body.Titulo != "" && req.body.Subtitulo != "" &&
            req.body.Cuerpo != "") {

            await novedadesModel.insertNovedad({
                ...req.body,
                img_id
            });

            res.redirect('/admin/Novedades');
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

router.get('/eliminar/:Id', async (req, res, next) => {
    var Id = req.params.Id;

    let novedad = await novedadesModel.deleteNovedadesById(Id);
    if (novedad.img_id) {
        await (destroy(novedad.img_id));
    }

    await novedadesModel.deleteNovedadesById(Id);
    res.redirect('/admin/Novedades');
});

router.get('/modificar/:id', async (req, res, next) => {
    var Id = req.params.id;
    var novedad = await novedadesModel.getNovedadById(Id);

    res.render('admin/modificar', {
        layout: 'admin/layout',
        novedad
    })
});

router.post('/modificar', async (req, res, next) => {
    try {

        let img_id = req.body.img_original;

        let borrar_img_vieja = false;

        if (req.body.img_delete === "1") {
            img_id = null;
            borrar_img_vieja = true;
        } else {
            if (req.files && Object.keys(req.files).length > 0) {
                imagen = req.files.imagen;
                img_id = (await uploader(imagen.tempFilePath)).public_id;
                borrar_img_vieja = true;
            }
        }
        if (borrar_img_vieja && req.body.img_original) {
            await (destroy(req.body.img_original));
        }


        var obj = {
            Titulo: req.body.Titulo,
            Subtitulo: req.body.Subtitulo,
            Cuerpo: req.body.Cuerpo,
            img_id
        }

        console.log(obj)

        await novedadesModel.modificarNovedadById(obj, req.body.Id);
        res.redirect('/admin/Novedades');

    } catch (error) {
 
        res.render('admin/modificar', {
            layout: 'admin/layout',
            error: true,
            message: "No se modifico la novedad"
        })
    }
})

module.exports = router;