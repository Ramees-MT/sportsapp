import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportsapp/model/categorymodel.dart';

import 'package:sportsapp/utils/constants.dart';

class Apiservices {
  Future<dynamic> headtohead() async {
    final response = await http.get(
      Uri.parse('$baseUrl v1/event/xdbsZdb/h2h/events'),
      headers: {
        'x-rapidapi-key': apikey, // Replace with your actual API key
      },
    );

    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body);

      return decodeData;
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<CategoryModel>> category() async {
    try {
     
      final response = await http.get(
        Uri.parse('${baseUrl}category/1465/unique-tournaments'),
        headers: {
          'x-rapidapi-key': apikey, // Replace with your actual API key
        },
      );

      if (response.statusCode == 200) {
        final decodeData =
            jsonDecode(response.body)['groups'][0]['uniqueTournaments'];

        List<CategoryModel> categorylist = decodeData
            .map<CategoryModel>(
                (mapElement) => CategoryModel.fromJson(mapElement))
            .toList();

       
        return categorylist;
      } else {
        throw Exception('Something went wrong');
      }
    } catch (e) {
      rethrow;
    }
  }
}
