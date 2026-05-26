package com.example.atividade_3;

public class Financiamento {
    private double valorVeiculo;
    private double entrada;
    private double taxaJuros;
    private int prazo;

    // Construtor com os dados que o usuário insere
    public Financiamento(double valorVeiculo, double entrada, double taxaJuros, int prazo) {
        this.valorVeiculo = valorVeiculo;
        this.entrada = entrada;
        this.taxaJuros = taxaJuros;
        this.prazo = prazo;
    }

    public Financiamento() {
    }

    // Regra de Negócio: Valor que de fato será financiado
    public double getValorFinanciado() {
        return this.valorVeiculo - this.entrada;
    }

    // Regra de Negócio: Cálculo da Parcela Mensal (Tabela PRICE)
    public double getValorParcela() {
        double valorFinanciado = getValorFinanciado();
        double taxaJurosDecimal = this.taxaJuros / 100.0;

        if (taxaJurosDecimal > 0) {
            return valorFinanciado * (taxaJurosDecimal * Math.pow(1 + taxaJurosDecimal, this.prazo)) 
                    / (Math.pow(1 + taxaJurosDecimal, this.prazo) - 1);
        } else {
            return valorFinanciado / this.prazo; // Se juros for 0%
        }
    }

    // Regra de Negócio: Valor total pago ao final
    public double getValorTotalPago() {
        return getValorParcela() * this.prazo;
    }

    // Regra de Negócio: Valor total de juros pagos
    public double getTotalJurosPagos() {
        return getValorTotalPago() - getValorFinanciado();
    }

    // Getter para o prazo (necessário para exibir no results.jsp)
    public int getPrazo() {
        return this.prazo;
    }
}