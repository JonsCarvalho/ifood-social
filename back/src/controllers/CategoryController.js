const CategoryService = require('../services/CategoryService')

module.exports = {
    
    searchAll: async (req, res) => {
        let json = {error:'', result:[]};

        let categories = await CategoryService.searchAll();

        for(let i in categories){
            json.result.push({
                id: categories[i].COD_CATEGORIA,
                name: categories[i].DCR_CATEGORIA,
                image_url: categories[i].IMG_CATEGORIA,
            });
        }

        res.json(json);
    },
}