<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.text.NumberFormat" %>
        <%@ page import="java.util.Locale" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Resultado da Simulação</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 50px;
                        background-color: #f4f4f9;
                    }

                    .result-container {
                        background: white;
                        padding: 25px;
                        border-radius: 8px;
                        max-width: 500px;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    }

                    .data-row {
                        display: flex;
                        justify-content: space-between;
                        padding: 10px 0;
                        border-bottom: 1px solid #eee;
                    }

                    .data-row:last-child {
                        border-bottom: none;
                    }

                    .highlight {
                        font-weight: bold;
                        color: #28a745;
                        font-size: 1.2em;
                    }

                    .back-link {
                        display: inline-block;
                        margin-top: 20px;
                        color: #007bff;
                        text-decoration: none;
                    }

                    .back-link:hover {
                        text-decoration: underline;
                    }
                </style>
            </head>

            <body>

                <% com.example.atividade_3.Financiamento f=(com.example.atividade_3.Financiamento)
                    request.getAttribute("financiamento"); java.text.NumberFormat
                    formatoMoeda=java.text.NumberFormat.getCurrencyInstance(new java.util.Locale("pt", "BR" )); %>

                    <div class="result-container">
                        <h2>Resultado da Simulação</h2>
                        <p>Projeção de financiamento baseada no método PRICE:</p>

                        <div class="data-row">
                            <span>Quantidade de Parcelas:</span>
                            <strong>
                                <%= f.getPrazo() %>x
                            </strong>
                        </div>

                        <div class="data-row">
                            <span>Valor de Cada Parcela:</span>
                            <span class="highlight">
                                <%= formatoMoeda.format(f.getValorParcela()) %>
                            </span>
                        </div>

                        <div class="data-row">
                            <span>Total de Juros Pagos:</span>
                            <strong style="color: #dc3545;">
                                <%= formatoMoeda.format(f.getTotalJurosPagos()) %>
                            </strong>
                        </div>

                        <div class="data-row">
                            <span>Valor Total Pago ao Final:</span>
                            <strong>
                                <%= formatoMoeda.format(f.getValorTotalPago()) %>
                            </strong>
                        </div>

                        <a href="simulation.jsp" class="back-link">← Nova Simulação</a>
                    </div>

            </body>

            </html>