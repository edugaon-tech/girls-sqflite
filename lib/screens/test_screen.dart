// void main(){
// // writeMyName("10",0);
// // writeYourName(age: 12,gender: "Female");
// writeMayDetails("",name: "");
// writeAddress(0);
// }
//
// // positional parameter
//
// writeMyName(String name,int age){
//   print(name);
// }
// // named parameters
// writeYourName({String? name,required int age,String gender = "Male"}){
//   print("$name $gender");
// }
//
// // optional
//
// writeAddress([int name = 0,String q = ""]){
//   print(name);
// }
//
// writeMayDetails(String a,{String? name}){
//
// }
//
// // var a = [{id: 1, name: , email: , phone: , marital_status: }, {id: 2, name: Hina, email: sleepy@gmail.com, phone: 0000000000, marital_status: Unmarried}, {id: 3, name: dajkfgduf, email: msadgasdn@gmail.com, phone: 547896555555555555555, marital_status: Unmarried}];
//
//
//
//
//


void main(){
  List<dynamic> a = [1,[3,5,[9,0]],6];
  var b = a[1][2][1];
  print(b);
}