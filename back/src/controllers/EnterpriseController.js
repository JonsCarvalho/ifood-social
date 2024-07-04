const EnterpriseService = require('../services/EnterpriseService')

module.exports = {
    
    searchAll: async (req, res) => {
        let json = {error:'', result:[]};

        let enterprises = await EnterpriseService.searchAll();

        for(let i in enterprises){
            json.result.push({
                codigo: enterprises[i].COD_EMPREEDIMENTO,
                descricao: enterprises[i].DCR_EMPREENDIMENTO,
                nome_fantasia: enterprises[i].DCR_NOME_FANTASIA,
                endereco: enterprises[i].DCR_ENDERECO,
                complemento: enterprises[i].DCR_COMPLEMENTO,
                cep: enterprises[i].DCR_NUM_CEP
            });
        }

        res.json(json);
    },
}