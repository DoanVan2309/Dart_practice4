import 'dart:io';

void main(){  
   Map<String,String> toDo = {
    'hoc bai' : 'da xong',
    'nau com' : 'chua xong',
    'giat quan ao' : 'chua xong',
    'don nha' : 'da xong'
   };
   int kt=1;
   while(kt!=0){
    print('Ban muon lam gi? (Chon so tuong ung)\n\t1->Xem danh sach cong viec\n\t2->Them cong viec\n\t3->Xoa cong viec\n\t0->Thoat chuong trinh');
    int? n = int.parse(stdin.readLineSync()!);
    switch(n){
      case 0:
        kt=0;
        break;
      case 1:
        print('Danh sach cong viec:');
        toDo.forEach((key, value) => print('\t$key:$value'));
        print('-----------------');
        break;
      case 2:
        print('Them cong viec:');
        String s1=stdin.readLineSync().toString();
        print('Trang thai(da xong/chua xong):');
        String s2=stdin.readLineSync().toString();
        toDo[s1]=s2;
        print('--Them thanh cong!--');
        break;
      case 3:
        print('Xoa cong viec:');
        String? s=stdin.readLineSync().toString();
        if(toDo.containsKey(s)){
          toDo.remove(s);
          print('--Xoa thanh cong!--');
        }
        else print('--Khong ton tai cong viec: $s!--');
        break;
    }
   }
  }
  