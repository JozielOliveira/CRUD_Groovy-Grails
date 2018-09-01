package treinamento

class Pessoa {

    String nome
    Integer idade

    static constraints = {
        nome(nullable: false, maxSize: 100)
        idade(nullable: false)
    }
}
