package com.example.atividade_3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/simulate")
public class SimulationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    
    // 1. Captura os parâmetros vindos do formulário
    double valorVeiculo = Double.parseDouble(request.getParameter("valorVeiculo"));
    double entrada = Double.parseDouble(request.getParameter("entrada"));
    double taxaJuros = Double.parseDouble(request.getParameter("taxaJuros"));
    int prazo = Integer.parseInt(request.getParameter("prazo"));

    // 2. Instancia a classe com as regras do financiamento
    Financiamento simulacao = new Financiamento(valorVeiculo, entrada, taxaJuros, prazo);

    // 3. Coloca o objeto inteiro na requisição com o nome "financiamento"
    request.setAttribute("financiamento", simulacao);

    // 4. Encaminha para o JSP de resultados
    request.getRequestDispatcher("results.jsp").forward(request, response);
}
}
