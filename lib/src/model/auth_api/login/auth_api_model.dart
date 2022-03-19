
class LoginModel {
  LoginModel({
    required this.token,
    required this.userId,
    required this.isActive,
    required  this.username,
    required this.phone,
    required this.userRole,
  });

  String token;
  int userId;
  bool isActive;
  String username;
  String phone;
  String userRole;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    token: json["token"]?? " ",
    userId: json["user_id"]?? 0,
    isActive: json["is_active"]?? false,
    username: json["username"]?? " ",
    phone: json["phone"]?? " ",
    userRole: json["user_role"]?? " ",
  );

}
