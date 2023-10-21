class User {
  final int userId;
  String username;
  final String name;
  final String token;
  String? imageUrl;

  User({
    required this.userId,
    required this.username,
    required this.name,
    required this.token,
    required this.imageUrl,
  });
}
