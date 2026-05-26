<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 50px;
            }

            .error {
                color: red;
                margin-bottom: 15px;
            }

            .form-group {
                margin-bottom: 10px;
            }
        </style>
    </head>

    <body>
        <h2>Área de Login</h2>

        <% String error=(String) request.getAttribute("errorMessage"); if (error !=null) { %>
            <div class="error">
                <%= error %>
            </div>
            <% } %>

                <form action="login" method="POST">
                    <div class="form-group">
                        <label for="username">Usuário:</label><br>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Senha:</label><br>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <button type="submit">Entrar</button>
                </form>
    </body>

    </html>