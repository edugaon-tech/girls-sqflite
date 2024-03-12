class StudentModel {
  String name;
  String phone;
  String email;
  String fatherName;
  String motherName;
  double age;
  bool isMale;

  StudentModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.age,
    required this.fatherName,
    required this.isMale,
    required this.motherName,
  });

  factory StudentModel.convertMapToModel(Map<String, dynamic> data) {
    return StudentModel(
        name: data['name'],
        email: data['email'],
        phone: data['phone'],
        age: data['age'],
        fatherName: data['fatherName'],
        isMale: data['isMale'],
        motherName: data['motherName']);
  }
  Map<String,dynamic> convertModelToMap(){
    return {
      "name": name,
       "email":email,
      "phone":phone,
      "age":age,
      "fatherName":fatherName,
      'isMale':isMale,
      "motherName":motherName
    };
  }
}
