import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:holding_app/src/http_response/http_response.dart';
import 'package:holding_app/src/model/api_models/Profile_api.dart';
import 'package:http/http.dart ' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider {
  static const String baseUrl = "https://mme-holding.herokuapp.com";

  Future<HttpResult> _postRequest(String url, data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: data,
      headers: await header(),
    );
    if (kDebugMode) {
      print(response.statusCode);
    }

    if (kDebugMode) {
      print(json.decode(response.body));
    }
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return HttpResult(
        isSuccess: true,
        statusCode: response.statusCode,
        result: json.decode(response.body),
      );
    } else {
      return HttpResult(
        isSuccess: false,
        statusCode: response.statusCode,
        result: "error",
      );
    }
  }

  Future<HttpResult> _getRequest(String url) async {
    if (kDebugMode) {
      print(url);
    }
    http.Response response = await http.get(
      Uri.parse(url),
      headers: await header(),
    );
    if (kDebugMode) {
      print(response.statusCode);
    }
    if (kDebugMode) {
      print(json.decode(response.body));
    }
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return HttpResult(
        isSuccess: true,
        statusCode: response.statusCode,
        result: json.decode(response.body),
      );
    } else {
      return HttpResult(
        isSuccess: false,
        statusCode: response.statusCode,
        result: "error",
      );
    }
  }

  header() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString("token") == null) {
      return null;
    } else {
      var token = prefs.getString("token") ?? "";
      return {
        "Authorization": "Bearer $token",
      };
    }
  }

  Future<HttpResult> sendLogin(String user, String pass) async {
    var data = {
      "username": user,
      "password": pass,
    };

    String url = baseUrl + "/auth/login/";
    return await _postRequest(url, data);
  }

  Future<HttpResult> sendRegister(
      String user, String phone, String pass) async {
    var data = {
      "username": user,
      "password": pass,
      "phone": phone,
    };

    String url = baseUrl + "/auth/register/";
    return await _postRequest(url, data);
  }

  Future<HttpResult> getCustomers() async {
    String url = baseUrl + "/customers/";
    return await _getRequest(url);
  }
}
