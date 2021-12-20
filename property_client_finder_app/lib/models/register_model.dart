class RegisterSuccess {
  late int id;
  late String username;
  late String email;
  late String password;
  late String updatedAt;
  late String createdAt;

  RegisterSuccess(
      {required this.id,
      required this.username,
      required this.email,
      required this.password,
      required this.updatedAt,
      required this.createdAt});

  RegisterSuccess.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    return data;
  }
}
