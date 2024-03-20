class Man{
  var name = "Ansar";
  Man(this.name);

  writeName(){
    print(name);
    return "You";
  }

  writeGender(){
    print("Male");
  }
}

class Female extends Man{
  String gender;
  Female(super.name,this.gender);

  // @override
  // var name = "sdfhsdkf";

  // @override
  // writeGender() {
  //   print(gender);
  // }

}

class Boy extends Female{
  Boy(super.name, super.gender);
}


void main(){
  var female = Female("Aparna","Girls");
  female.writeName();
  // print(Man("Nandu").writeName());
}