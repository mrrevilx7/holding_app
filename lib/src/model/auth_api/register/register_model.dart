

class RegisterModel {
  RegisterModel({
    required this.id,
    required this.username,
    required this.phone,
    required this.userRole,
    required this.isActive,
  });

  int id;
  String username;
  String phone;
  String userRole;
  bool isActive;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    id: json["id"]?? 0,
    username: json["username"]?? " ",
    phone: json["phone"]?? " ",
    userRole: json["user_role"]?? " ",
    isActive: json["is_active"]??  false,
  );

}