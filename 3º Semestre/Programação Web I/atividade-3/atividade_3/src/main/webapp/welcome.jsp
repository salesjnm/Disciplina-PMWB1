<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Bem-vindo</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 50px;
                background-color: #f4f4f9;
            }

            .container {
                background: white;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h2>Olá, <%= request.getAttribute("usuario") %>!</h2>
            <p>Seu login foi realizado com sucesso no sistema.</p>
            <br>
            <a href="login.jsp">Sair / Voltar</a>
        </div>
    </body>

    </html>