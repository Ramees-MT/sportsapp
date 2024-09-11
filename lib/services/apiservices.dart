import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:sportsapp/utils/constants.dart';

class Apiservices{
  Future<dynamic> headtohead() async {
  final response = await http.get(
    Uri.parse('$baseUrl v1/event/xdbsZdb/h2h/events'),
    headers: {
      'x-rapidapi-key':apikey, // Replace with your actual API key
      
    },
  );

  if (response.statusCode == 200) {
    final decodeData = jsonDecode(response.body);

    return decodeData;
  } else {
    throw Exception('Something went wrong');
  }
}
}