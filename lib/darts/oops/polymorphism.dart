class Man{

  var name = "Ansar";
  writeGender(){
    print("Male");
  }
}

class Female extends Man{

  @override
  var name = "sdfhsdkf";

  @override
  writeGender() {
    print("Female");
  }

}


void main(){
  var female = Female();
  print(Man().name);
  print(female.name);
}