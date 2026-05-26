<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Simulador de Financiamento</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 50px;
                background-color: #f4f4f9;
            }

            .form-container {
                background: white;
                padding: 25px;
                border-radius: 8px;
                max-width: 400px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                font-weight: bold;
            }

            .form-group input {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                box-sizing: border-box;
            }

            button {
                background-color: #007bff;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>

    <body>

        <div class="form-container">
            <h2>Simulação de Financiamento</h2>
            <form action="simulate" method="POST">
                <div class="form-group">
                    <label for="valorVeiculo">Valor do Veículo (R$):</label>
                    <input type="number" step="0.01" id="valorVeiculo" name="valorVeiculo" placeholder="Ex: 50000.00"
                        required>
                </div>

                <div class="form-group">
                    <label for="entrada">Valor da Entrada (R$):</label>
                    <input type="number" step="0.01" id="entrada" name="entrada" placeholder="Ex: 10000.00" required>
                </div>

                <div class="form-group">
                    <label for="taxaJuros">Taxa de Juros Mensal (%):</label>
                    <input type="number" step="0.01" id="taxaJuros" name="taxaJuros" placeholder="Ex: 1.5" required>
                </div>

                <div class="form-group">
                    <label for="prazo">Prazo (em meses):</label>
                    <input type="number" id="prazo" name="prazo" placeholder="Ex: 48" required>
                </div>

                <button type="submit">Calcular Financiamento</button>
            </form>
        </div>

    </body>

    </html>