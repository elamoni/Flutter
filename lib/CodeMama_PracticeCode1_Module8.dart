import 'dart:io';

void main() {
  String vals = stdin.readLineSync()!;
  var split = vals.split(' ');
  var productID = split[0];
  if(productID == '101'){
    var res = int.parse(split[1]) * 10 ;
    print("${res}");
  }
  if(productID == '202'){
    var res = int.parse(split[1]) * 25 ;
    print("${res}");
  }
  if(productID == '303'){
    var res = int.parse(split[1]) * 5;
    print("${res}");
  }

}