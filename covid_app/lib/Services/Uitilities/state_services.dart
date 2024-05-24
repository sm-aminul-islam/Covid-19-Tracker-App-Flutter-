import 'dart:convert';

import 'package:covid_app/Model/world_state_model.dart';
import 'package:covid_app/Services/Uitilities/app_url.dart';
import 'package:http/http.dart' as http;

class StatesServices {
  Future<WorldStateModel> fetchWorldStatesRecords() async {
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return WorldStateModel.fromJson(data);
    } else {
      throw Exception("Error");
    }
  }
}
