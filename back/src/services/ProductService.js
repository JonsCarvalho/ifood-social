const db = require('../db')

module.exports = {
    searchAll: () => {
        return new Promise((aceito, rejeitado) => {

            db.query('SELECT * FROM produto', (error, results) => {
                if (error) { rejeitado(error); return; }
                aceito(results);
            });
        });
    },

    create: (id, name, img_url, price, available, category_id, enterprise_id) => {
        return new Promise((aceito, rejeitado) => {

            db.query('INSERT INTO produto (COD_PRODUTO, DCR_PRODUTO, IMG_PRODUTO, VLR_PRODUTO, FLAG_DISPONIVEL, COD_CATEGORIA, COD_EMPREEDIMENTO) VALUES (?, ?, ?, ?, ?, ?, ?)',
                [id, name, img_url, price, available, category_id, enterprise_id],
                (error, results) => {
                    if (error) { rejeitado(error); return; }
                    aceito(results.codigo); //insertId
                }
            );
        });
    },
}