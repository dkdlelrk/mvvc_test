import 'package:http/http.dart' as http;
import 'package:mvvm_flutter/model/model.dart';

class Services {
  static var client = http.Client();
  static Future<List<Model>?> fetchData() async {
    var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      var data = response.body;
      return modelFromJson(data);
    } else {
      return null;
    }
  }
}
