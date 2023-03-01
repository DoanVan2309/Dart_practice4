void main(){  
   List<String> names = ["Kien", "Doan", "Anh", "Nghia", "Dong" , "Thien", "An"];
    
   List<String> startWithA =
      names.where((element) => element.startsWith("A")).toList();  

    print(startWithA);
 }