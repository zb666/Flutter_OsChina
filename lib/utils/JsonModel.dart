class User {
  final String name;
  final String email;

  User(this.name, this.email);

  //json->Map格式||json到bean类数据
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'name': name, 'email': email};

}
