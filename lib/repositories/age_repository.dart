import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/person_model.dart';

class AgeRepository {
  final String baseUrl = 'https://api.agify.io';

  Future<PersonModel> getAge(String name) async {
    // TODO: Think about error handling, what if the API call fails?
    final response = await http.get(Uri.parse('$baseUrl?name=$name'));
    switch(response.statusCode) {
      case 200:
        return PersonModel.fromJson(jsonDecode(response.body));
      case 401:
        throw Exception('Your API key is invalid.');
      case 402:
        throw Exception('You have exceeded your quota, please upgrade your plan.');
      case 422:
        throw Exception('Your input is invalid, please check it and try again.');
      case 429:
        throw Exception('You have exceeded the rate limit.');

      default:
        throw Exception('Failed to load age.');
    }
  }
}
