class Session {
  Session({
    this.username,
    this.token,
    this.isAdmin,
  });

  Session copyWith({
    String? username,
    String? token,
    bool? isAdmin,
  }) =>
      Session(
        username: username ?? this.username,
        token: token ?? this.token,
        isAdmin: isAdmin ?? this.isAdmin,
      );

  factory Session.fromJson(final Map<String, dynamic> json) => Session(
        username: json["username"] as String,
        token: json["token"] as String,
        isAdmin: json["admin"] as bool,
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "token": token,
        "admin": true,
      };

  final String? username;

  final String? token;

  final bool? isAdmin;

  bool get isAuthenticated => username != null && token != null;
}
