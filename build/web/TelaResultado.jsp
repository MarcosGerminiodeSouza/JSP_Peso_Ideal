<%@page import="classeJava.CalculoIMC"%>
<%@page import="classeJava.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peso Ideal</title>
    </head>
    <body>
        <h1 >Peso Ideal</h1>
        <h2>Resultado do IMC</h2>
        <%
            String nomeIn = request.getParameter("nome");
            String pesoIn = request.getParameter("peso");
            String alturaIn = request.getParameter("altura");
            
            Pessoa objPessoa = new Pessoa();
            
            objPessoa.setNome(nomeIn);
            objPessoa.setValorPeso(Float.valueOf(pesoIn));
            objPessoa.setValorAltura(Float.valueOf(alturaIn));
            
            CalculoIMC objCalculoIMC = new CalculoIMC();
            
            float valorIMC = objCalculoIMC.CalcularIMC(objPessoa.getValorPeso(), objPessoa.getValorAltura());
            String situacao = objCalculoIMC.getSituacao(valorIMC);
            String nomePessoa = objPessoa.getNome();           
        %>
        O valor do IMC é <b><%= valorIMC %></b><br>
        <b><%= nomePessoa%></b> você está
        <font color ="red">
        <b><%=situacao%></b>
        </font>
        
    </body>
</html>
