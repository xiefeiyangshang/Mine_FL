class UserInfo {
  String userName;
  String userId;
  String phone;

  UserInfo({this.userId, this.userName, this.phone});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
        userId: json['userId'],
        userName: json['userName'],
        phone: json['phone']);
  }
}
