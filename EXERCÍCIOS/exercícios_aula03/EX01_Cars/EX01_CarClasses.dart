class Car {
  final montadora;
  final modelo;
  final cor;
  final potencia;
  final combustivel;

  void showCar() {
    print(
        'montadora: $montadora\nmodelo: $modelo\ncor: $cor\npotencia: $potencia\ncombustivel: $combustivel');
  }

  Car(this.montadora, this.modelo, this.cor, this.potencia, this.combustivel);
}
