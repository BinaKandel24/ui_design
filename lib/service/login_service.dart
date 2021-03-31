import 'dart:convert';
import 'package:ui_design/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class LoginService {
  LoginResponseModel loginResponseModel;

  Future<void> getloginResponseModel(
      LoginRequestModel loginRequestModel) async {
    final response = await http.post(Uri.parse('https://reqres.in/api/login'),
        body: loginRequestModel.toJson());

    if (response.statusCode == 200 || response.statusCode == 400) {
      print('got reponse');
      var jsonString = response.body;
      var responseMap = json.decode(jsonString);

      loginResponseModel = LoginResponseModel.fromJson(responseMap);
    } else {
      throw Exception('Something went wrong');
    }
  }
}
