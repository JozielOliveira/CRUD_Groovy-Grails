package treinamento

class PessoaController {

    NegocioService negocioService


    def index() {

        return ['pessoas':negocioService.listarPessoas(), 'pessoa':  negocioService.pessoa(params.id)]

    }

    def salvar(){

        negocioService.salvar(params)
        redirect(action:"index")

    }

    def deletar(){

        negocioService.deletar(params.id)
        redirect(action:"index")

    }
}
