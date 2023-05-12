<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peso Ideal</title>
    </head>
    <body>
        <h1>Peso Ideal</h1>
        <h2>Inclusão de dados</h2>
        <form action="TelaResultado.jsp" method="post">
            Nome:   <input type="text" name="nome"/><br><br>
            Peso:   <input type="text" name="peso"/><br><br>
            Altura: <input type="text" name="altura"/><br><br>
            <input type="submit" name="CalcumarIMC" value="Calcular IMC">
        </form>
    </body>
</html>
