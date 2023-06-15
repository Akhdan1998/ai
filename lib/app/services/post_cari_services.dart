// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// Future<void> cari() async {
//   try {
//     Uri url_ = Uri.parse(
//         'https://dashboard.parentoday.com/api/chat/ai');
//     var res = await http.post(
//       url_,
//       body: {
//         'prompt': pertanyaan.text,
//         'random_id': time,
//       },
//       headers: {
//         "Accept": "application/json",
//         "Authorization": "Bearer 1354|r5uOe7c4yC14CDvrkeTfP73s0AIrkG01EKos4lC4",
//       },
//     );
//     Map<String, dynamic> body = jsonDecode(res.body);
//     if (res.statusCode == 200) {
//       bool data = body["data"];
//     } else {
//       throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
//     }
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
//   }
// }