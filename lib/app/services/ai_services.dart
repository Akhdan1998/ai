import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/api_return_aiChat.dart';
import '../model/model_ai.dart';

class AiServices {
  static Future<ApiReturnAi<List<Ai>>?> getBerat(String token,
      {http.Client? client}) async {
    String baseUrl =
        'https://dashboard.parentoday.com/api/chat/ai?random_id=23487293';
    if (client == null) {
      client = http.Client();
    }
    String url = baseUrl;
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': '${token}'
    });
    if (response.statusCode != 200) {
      return ApiReturnAi(message: 'Please try Again');
    }
    var data = jsonDecode(response.body);
//jika backand berbentuk list
    List<Ai> value =
    (data['data'] as Iterable).map((e) => Ai.fromJson(e)).toList();
//jika backand tidak berbentuk list
    //CommunityGroup value1 = CommunityGroup.fromJson(data['data']);
    return ApiReturnAi(value: value);
  }
}
