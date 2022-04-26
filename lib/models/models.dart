import 'dart:convert';
import 'package:http/http.dart' as http;

Map data = {'fields': '*','limit':'10'};
String body = json.encode(data);


Future<http.Response> responseData() async {
  http.Response? response =
      await http.post(Uri.parse("https://api.igdb.com/v4/games"),
          headers: {
            "Client-ID": "mtuu57oa72k6ddfq4q2gkakvnjxfn8",
            "Authorization": "Bearer knrmvj3awkcm4lkndi1lqvbe3ctlzg"
          },
          body: data);
  return response;
}
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:machinetest/models/game.dart';



// class GameRepository {
//   Future<List<Game>> fetchGames() async {
//     final response = await http.post(Uri.parse('https://api.igdb.com/v4/games'),
//         body:
//             "fields name,cover.*, first_release_date, rating; where cover != null & first_release_date != n & rating != n; limit 50; sort rating desc;",
//         headers: {
//           "Client-ID": "mtuu57oa72k6ddfq4q2gkakvnjxfn8",
//           "Authorization": "Bearer knrmvj3awkcm4lkndi1lqvbe3ctlzg",
//         });

//     if (response.statusCode == 200) {
//       List games = json.decode(response.body);
//       return games.map((game) => new Game.fromJson(game)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
// }

