package treinamento

import grails.gorm.transactions.Transactional

@Transactional
class NegocioService {

    def listarPessoas(){

        return Pessoa.findAll()

    }

    def pessoa(id){

        return  Pessoa.findById(id)

    }

    def salvar (params){

        Pessoa pessoa

        if (params.id)
            pessoa = Pessoa.findById(params.id)
        else
            pessoa = new Pessoa()


        pessoa.properties = params
        pessoa.save()

    }

    def deletar (id){

        Pessoa pessoa = Pessoa.findById(id)
        pessoa.delete()

    }
}
