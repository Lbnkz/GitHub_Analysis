import 'dart:convert';
import 'package:github_analysis/src/api.dart';
import 'package:http/http.dart' as http;

Future<Api> request(user) async {
  final response = await http.get(Uri.parse('https://api.github.com/users/$user'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    Api apiData = Api.fromJson(data);

    return apiData;
  } else {
    // Em caso de falha, você pode lançar uma exceção ou retornar um valor padrão, dependendo dos requisitos do seu aplicativo.
    throw Exception('Falha na requisição: ${response.statusCode}');
  }
}

