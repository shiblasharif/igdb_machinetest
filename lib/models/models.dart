import 'package:http/http.dart' as http;

Future<http.Response> responseData() async {
  http.Response? response =
      await http.post(Uri.parse("https://api.igdb.com/v4/games"),
          headers: {
            "Client-ID": "mtuu57oa72k6ddfq4q2gkakvnjxfn8",
            "Authorization": "Bearer knrmvj3awkcm4lkndi1lqvbe3ctlzg"
          },
          body: 'fields cover.*;');
  print(response.body);
  return response;
}
