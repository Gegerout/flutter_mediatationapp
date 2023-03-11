class UserModel {
  final String? id;
  final String email;
  final String? nickName;
  final String? avatar;
  final String? token;

  UserModel({this.id,required this.email, this.nickName, this.avatar, this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      nickName:json['nickName'],
      avatar: json['avatar'],
      token: json['token']
    );
  }
}