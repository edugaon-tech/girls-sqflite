void main(){
// writeMyName("10",0);
// writeYourName(age: 12,gender: "Female");
writeMayDetails("",name: "");
writeAddress(0);
}

// positional parameter

writeMyName(String name,int age){
  print(name);
}
// named parameters
writeYourName({String? name,required int age,String gender = "Male"}){
  print("$name $gender");
}

// optional

writeAddress([int name = 0,String q = ""]){
  print(name);
}

writeMayDetails(String a,{String? name}){

}





