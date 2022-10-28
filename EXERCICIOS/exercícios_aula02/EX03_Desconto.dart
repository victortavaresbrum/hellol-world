void main(){

double preco = 500;
double desconto =5;

final valorFinal = descontoProduto(desconto, preco);

print('Preço do produto: R\$ $preco)');
print('Desconto de 10%: R $valorFinal');


}
double descontoProduto(descount,value){

  double valorDesconto = (value*descount)*0.01;
  return valorDesconto;
}