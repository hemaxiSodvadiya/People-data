import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/people_models.dart';

class JsonPlaceHolderAPIHelper {
  JsonPlaceHolderAPIHelper._();

  static final JsonPlaceHolderAPIHelper jsonPlaceHolderAPIHelper =
      JsonPlaceHolderAPIHelper._();

  // String BASE_URL = 'https://randomuser.me/api/';

  Future<PeopleData?> fetchSinglePeopleData() async {
    http.Response _response =
        await http.get(Uri.parse('https://randomuser.me/api/'));
    if (_response.statusCode == 200) {
      Map<String, dynamic> _jsonDecode = jsonDecode(_response.body);
      PeopleData _peopleData = PeopleData.fromJSON(json: _jsonDecode);
      return _peopleData;
    }
    return null;
  }
}
