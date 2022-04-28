import 'dart:convert';

Games gamesFromMap(String str) => Games.fromMap(json.decode(str));

String gamesToMap(Games data) => json.encode(data.toMap());

class Games {
  Games({
    required this.id,
    required this.cover,
  });

  int id;
  Cover cover;

  factory Games.fromMap(Map<String, dynamic> json) => Games(
        id: json["id"],
        cover: Cover.fromMap(json["cover"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "cover": cover.toMap(),
      };
}

class Cover {
  Cover({
    required this.id,
    required this.alphaChannel,
    required this.animated,
    required this.game,
    required this.height,
    required this.imageId,
    required this.url,
    required this.width,
    required this.checksum,
  });

  int id;
  bool alphaChannel;
  bool animated;
  int game;
  int height;
  String imageId;
  String url;
  int width;
  String checksum;

  factory Cover.fromMap(Map<String, dynamic> json) => Cover(
        id: json["id"],
        alphaChannel: json["alpha_channel"],
        animated: json["animated"],
        game: json["game"],
        height: json["height"],
        imageId: json["image_id"],
        url: json["url"],
        width: json["width"],
        checksum: json["checksum"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "alpha_channel": alphaChannel,
        "animated": animated,
        "game": game,
        "height": height,
        "image_id": imageId,
        "url": url,
        "width": width,
        "checksum": checksum,
      };
}
