void main() {
  List <int> numbers = [11,43,23,33];
  var largestNumber = numbers[0];
  var smallestNumber = numbers[0];

  numbers.forEach((element) => {
    if(largestNumber>element){largestNumber=element},
    if(smallestNumber<element){smallestNumber=element}, 
  });

  print('Maior valor: $largestNumber');
  print('Maior valor: $smallestNumber');
}
