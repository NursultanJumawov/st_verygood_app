import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(
      (json.decode(str) as List<dynamic>).map<dynamic>(
        (dynamic x) => Post.fromJson(x as Map<String, dynamic>),
      ),
    );

List<Post> boredActivityFromJson(String str) => List<Post>.from(
      (json.decode(str) as List<dynamic>).map<dynamic>(
        (dynamic x) => Post.fromJson(x as Map<String, dynamic>),
      ),
    );

class Post {
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  final int userId;
  final int id;
  final String title;
  final String body;
}
