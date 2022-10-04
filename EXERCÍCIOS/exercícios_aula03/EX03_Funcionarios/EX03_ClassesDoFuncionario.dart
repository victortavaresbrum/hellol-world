import 'FuncionarioClasse.dart';

class Caixa extends Funcionarios {
  Caixa(super.matricula, super.nome, super.sobrenome, super.salario,
      super.horasTrabalhadas);
}

class Vendedor extends Funcionarios {
  @override
  void perfilVendedor() {
    final bonificacao = salario + (salario * 0.2);
    final salarioTotal = horasTrabalhadas < 220 ? salario : bonificacao;
    print(
        'Vendedor\n\nmatricula: $matricula\nnome: $nome\nsobrenome: $sobrenome\nsalario: R\$$salarioTotal\nhoras trabalhadas: $horasTrabalhadas\n\n');
  }

  Vendedor(super.matricula, super.nome, super.sobrenome, super.salario,
      super.horasTrabalhadas);
}

class Gerente extends Funcionarios {
  @override
  void perfilGerente() {
    double bonificacao = salario + (salario * 0.35);
    final salarioTotal = horasTrabalhadas < 220 ? salario : bonificacao;
    print(
        'Gerente\n\nmatricula: $matricula\nnome: $nome\nsobrenome: $sobrenome\nsalario: R\$$salarioTotal\nhoras trabalhadas: $horasTrabalhadas\n');
  }

  Gerente(super.matricula, super.nome, super.sobrenome, super.salario,
      super.horasTrabalhadas);
}
