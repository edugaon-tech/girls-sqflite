class Father{
  //
  String fatherName = "Santosh Sah";
}


class Boy extends Father{
  //
  String childName = "Jyoti Sah";
  writeFatherName(){
    print(fatherName);
  }
}

class Girl extends Boy{

}

void main(){
  // var a = Child();
  print(Boy().writeFatherName());
}