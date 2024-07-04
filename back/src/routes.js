const express = require('express')
const router = express.Router()

const ProductController = require('./controllers/ProductController')
router.get('/produtos', ProductController.searchAll);
router.post('/produtos/criar', ProductController.create);

const CategoryController = require('./controllers/CategoryController')
router.get('/categorias', CategoryController.searchAll);

const EnterpriseController = require('./controllers/EnterpriseController')
router.get('/empreendimentos', EnterpriseController.searchAll);

module.exports = router