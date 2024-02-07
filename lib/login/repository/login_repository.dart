import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:unhush_assignment/constants/api_endpoints.dart';
import 'package:unhush_assignment/login/models/user_model.dart';

class LoginRepository {
  Future<UserModel?> login({
    required dynamic code,
    required String redirectURL,
  }) async {
    try {
      final Uri tokenURI = Uri.parse(APIEndpoints.loginAndFetchProfile);
      final http.Response response = await http.post(
        tokenURI,
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(
          {
            "code": code,
            "redirect_url": redirectURL,
          },
        ),
      );

      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final decodedData = json.decode(response.body);
        UserModel userModel = UserModel.fromJson(decodedData);
        return userModel;
      }
    } catch (error) {
      log("login() ================= : $error");
    }
    return null;
  }
}
