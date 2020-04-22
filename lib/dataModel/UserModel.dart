import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  final int id;
  final String name;
  final String username;
  final String category;

  User({this.id, this.name, this.username, this.category});

  factory User.fromJson(Map<String, dynamic> json) {
    print(json);
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      category: json['category'],
    );
  }
}