<html>
    <head>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
        <title>CRUD</title>
    </head>
    <body>
    <div class="container">
            <table class="card">

                <thead class="center">
                <caption class="indigo-text"><h3>CRUD com Groovy</h3></caption>
                    <form action="/pessoa/salvar">
                        <tr>
                            <th></th>
                            <input type="number" name="id" value="${pessoa?.id}" style="display: none">
                            <th>
                                <label for="nome">Nome</label>
                                <input type="text" name="nome" value="${pessoa?.nome}">
                            </th>
                            <th>
                                <label for="idade">Idade</label>
                                <input type="number" name="idade" value="${pessoa?.idade}">
                            </th>
                            <th class="center">
                                <button class="btn btn-large waves-effect waves-light green lighten-1" type="submit">Salvar</button>
                            </th>
                        </tr>
                        <tr>
                            <th></th>
                            <th>Nome</th>
                            <th>Idade</th>
                            <th>Ações</th>
                        </tr>
                    </form>
                </thead>
                <tbody>
                    <g:each var="pessoa" in="${pessoas}">
                        <tr class="collection-item">
                            <td></td>
                            <td>${pessoa.nome}</td>
                            <td>${pessoa.idade}</td>
                            <td>
                                <a class="secondary-content btn-small light-blue lighten-1" href="/pessoa/index/${pessoa.id}">Editar</a>

                                <a class="secondary-content btn-small red lighten-1" href="/pessoa/deletar/${pessoa.id}">Deletar</a>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
    </div>
    <style>
        .container {
                 display: flex;
                 flex-direction: row;
                 justify-content: center;
                 align-items: center
        }
        .secondary-content {
            margin-right: 2%;
        }
    </style>
    </body>
</html>