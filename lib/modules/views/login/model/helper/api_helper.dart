import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../utils/global/global.dart';
import '../api_model.dart';

class apihelper {
  apihelper._();
  static final apihelper api = apihelper._();

  Future<List<api_model>?> getdata() async {
    String api =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-01-06&sortBy=publishedAt&apiKey=5fa9872178a5436ba5338d724ef90792";
    var ans = await http.get(Uri.parse(api));
    if (ans.statusCode == 200) {
      Global.num = ans.statusCode;
      var body = ans.body;
      Map mapdata = jsonDecode(body);
      List apidata = mapdata['data'];
      List<api_model> data = apidata.map((e) => api_model.api(e: e)).toList();
      return data;
    } else {
      return null;
    }
  }
}
