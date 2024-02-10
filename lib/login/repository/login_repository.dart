import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:unhush_assignment/constants/api_endpoints.dart';
import 'package:unhush_assignment/login/models/user_model.dart';

class LoginRepository {
  Future<UserModel?> login(dynamic code) async {
    try {
      Map<String, dynamic> data = {
        "grant_type": "authorization_code",
        "code": code,
        "redirect_uri": APIEndpoints.redirectURI,
        "client_id": "77ksra7mab0dqy",
        "client_secret": "K6L1heod0FdktqBC",
      };

      final http.Response tokenResponse = await http.post(
        Uri.parse(APIEndpoints.generateAccessToken),
        body: data,
      );

      if (tokenResponse.statusCode >= 200 && tokenResponse.statusCode <= 299) {
        final decodedTokenResponse = json.decode(tokenResponse.body);
        final String token = decodedTokenResponse["access_token"];

        final Uri tokenURI = Uri.parse(APIEndpoints.fetchProfile);
        final http.Response response = await http.get(
          tokenURI,
          headers: {
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Headers":
                "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
            "Access-Control-Allow-Methods": "POST, OPTIONS",
            "Authorization": "Bearer $token",
          },
        );

        if (response.statusCode >= 200 && response.statusCode <= 299) {
          final decodedData = json.decode(response.body);
          UserModel userModel = UserModel.fromJson(decodedData);
          return userModel;
        }
      }
    } catch (error) {
      log("login() ================= : $error");
    }
    return null;
  }
}
