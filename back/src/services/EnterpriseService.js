const db = require('../db')

module.exports = {
    searchAll: () => {
        return new Promise((aceito, rejeitado)=>{

            db.query('SELECT * FROM empreendimento', (error, results)=>{
                if(error) { rejeitado(error); return; }
                aceito(results);
            });
        });
    },
}