class UserModel{
  int? id;
  String? name;
  String? phone;
  String? email;
  String? maritalStatus;

  UserModel({this.id, this.email, this.name, this.phone, this.maritalStatus});

  Map<String,dynamic>convertModelToMap() {
    return {
      "id": id,
      "name": name,
      "phone": phone,
      "marital_status": maritalStatus,
      "email": email
    };
  }

  factory UserModel.convertMapToModel(Map<String,dynamic> data){
   return UserModel(
      phone: data['phone'],
      name: data['name'],
      maritalStatus: data['marital_status'],
      email: data['email'],
      id: data['id']
    );
  }
}

// id,name,phone,email,gender
