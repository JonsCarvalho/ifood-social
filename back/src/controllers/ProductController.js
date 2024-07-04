const ProductService = require('../services/ProductService')

module.exports = {

    searchAll: async (req, res) => {
        let json = { error: '', result: [] };

        let products = await ProductService.searchAll();

        for (let i in products) {
            json.result.push({
                codigo: products[i].COD_PRODUTO,
                descricao: products[i].DCR_PRODUTO,
                valor: products[i].VLR_PRODUTO,
                disponivel: products[i].FLAG_DISPONIVEL,
                category_id: products[i].COD_CATEGORIA,
                empreendimento_id: products[i].COD_EMPREENDIMENTO,
                img_url: products[i].IMG_PRODUTO,
            });
        }

        res.json(json);
    },

    create: async (req, res) => {
        let json = { error: '', result: {} };

        let id = req.body.id;
        let name = req.body.name;
        let img_url = req.body.img_url;
        let price = req.body.price;
        let available = req.body.available;
        let category_id = req.body.category_id;
        let enterprise_id = req.body.enterprise_id;
        
        if (id && name && img_url && price && available && category_id && enterprise_id) {
            let codigo = await ProductService.create(id, name, img_url, price, available, category_id, enterprise_id);
            json.result = {
                codigo: codigo,
                name,
                price
            };
        } else {
            json.error = 'Campos não enviados';
        }
        res.json(json);
    },
}