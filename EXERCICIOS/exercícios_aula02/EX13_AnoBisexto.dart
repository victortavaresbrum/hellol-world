void main(){

  int year = 1900;

  int verificationYear = year % 4;
  final verificationYearWith100 = year/100;

  print(verificationYear);
  print(verificationYearWith100);
  if(verificationYearWith100 != int && verificationYear==0){
    print('É um ano Bissexto');
  }else{
    print('');
  }
}