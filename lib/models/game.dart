import 'cover.dart';

class Game {
  final int id;
  final String name;
  final Cover cover;
  final int releaseDate;
  

  Game({required this.id, required this.name, required this.cover, required this.releaseDate});

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      name: json['name'],
      releaseDate: json['first_release_date'],
      cover: Cover.fromJson(json["cover"]),
    );
  }
}

 