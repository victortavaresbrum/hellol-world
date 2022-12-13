
final _num = 123.45;

extension Calculadora on double{
double plus (double other) => this + other; 
}

void main(){



  print(_num.plus(5));
}