
class LoginReqModel {
  String? username;
  String? password;
  String? expiresInMins;

  LoginReqModel({
    this.username,
    this.password,
    this.expiresInMins,
  });

  factory LoginReqModel.fromJson(Map<String, dynamic> json) => LoginReqModel(
    username: json["username"],
    password: json["password"],
    expiresInMins: json["expiresInMins"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "expiresInMins": expiresInMins,
  };
}