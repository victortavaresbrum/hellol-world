void main (){
  double totalParcelas = 60;
  double valorParcelaFixa = 566.78;
  double numeroParcelasPagas = 18;

  final saldoDevedor = calculoValorAmortizacao(totalParcelas,valorParcelaFixa, numeroParcelasPagas).toStringAsFixed(2);
  final valorTotal = totalParcelas*valorParcelaFixa;
  
  print('Valor total do consórcio: R\$ ${valorTotal.toStringAsFixed(2)}\nSaldo devedor: R\$ $saldoDevedor');

}

double calculoValorAmortizacao(double parcelas, double valorParcela, double numeroParcelasPagas){
  
  double total = (parcelas-numeroParcelasPagas)*valorParcela;
  return total;
}