import 'package:http/http.dart' as http;
import 'dart:convert';
// ignore: camel_case_types
class dataAPI {
  int myid;
  String myemail;

  dataAPI({required this.myid, required this.myemail});

  factory dataAPI.createData(Map<String, dynamic> object){
    return dataAPI(myid: object ['id'], myemail: object['email']);
  }

  static Future<dataAPI> connectToAPI() async {
    // ignore: non_constant_identifier_names
    String URLapi = 'https://reqres.in/api/users/2';
    var apiResult = await http.get(Uri.parse(URLapi));

    var jsonObject = json.decode(apiResult.body);
    var data = (jsonObject as Map <String, dynamic>)['data'];
    return dataAPI.createData(data);
  }
}