import 'dart:io';

class Jogadores{
    String? nome;
    int saques;
    int saquesEfetivos;
    int bloqueios;
    int bloqueiosEfetivos;
    int ataques;
    int ataquesEfetivos;
    
    
    dynamic porcentagemSaques(){
      final porcentagemSaque = (saquesEfetivos*100)/saques;
      return porcentagemSaque.toStringAsFixed(1);
    }
    dynamic porcentagemBloqueios(){
      final porcentagemBloqueios = (bloqueiosEfetivos*100)/bloqueios;
      return porcentagemBloqueios.toStringAsFixed(1);
    }
    dynamic porcentagemAtaques(){
      final porcentagemAtaques = (ataquesEfetivos*100)/ataques;
      return porcentagemAtaques.toStringAsFixed(1);
    }
    Jogadores(this.nome,this.saques,this.saquesEfetivos,this.bloqueios,this.bloqueiosEfetivos,this.ataques,this.ataquesEfetivos);
  @override
  String toString(){
    return 'Jogador: $nome\nSaque: $saquesEfetivos/$saques (${porcentagemSaques()}%)\nBloqueio: $bloqueiosEfetivos/$bloqueios (${porcentagemBloqueios()}%\nAtaque: $ataquesEfetivos/$ataques (${porcentagemAtaques()}%)';
  }
  }
void main(){
  

   final atleta1 = Jogadores('Maurício',8,4,18,12,2,1);
   final atleta2 = Jogadores('Marcelo',15,10,8,5,21,10);
   final atleta3 = Jogadores('Tande',11,6,14,12,15,11);
   final atleta4 = Jogadores('Giovane',11,5,10,8,18,12);
   final atleta5 = Jogadores('Paulo',9,2,15,12,15,10);
   final atleta6 = Jogadores('Carlos',10,3,10,8,12,8);

    print('$atleta1\n\n$atleta2\n\n$atleta3\n\n$atleta4\n\n$atleta5\n\n$atleta6');
 
  }
