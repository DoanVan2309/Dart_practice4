import 'dart:io';

void main(){
  print('Nhap so luong chi phi:');
  int? n = int.parse(stdin.readLineSync()!);
  List<double> money=[];
  double s=0;
  for(int i=0;i<n;i++){
    print('Nhap chi phi ${i+1}:');
    double? a = double.parse(stdin.readLineSync()!);
    money.add(a);
    s=s+a;
  }
  print('Tong tien: $s');

}