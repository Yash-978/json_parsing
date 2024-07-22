import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../UserDataModal/userDataModal.dart';

// class UserProvider extends ChangeNotifier {
//   List<UserDataModel> userList = [];
//
//   Future<void> jsonParsing() async {
//     String json = await rootBundle.loadString('assets/Json/userData.json');
//     List user = jsonDecode(json);
//     userList = user.map((e) => UserDataModel.fromJson(e)).toList();
//     notifyListeners();
//   }
//
//   UserProvider() {
//     jsonParsing();
//   }
// }
class UserDataProvider extends ChangeNotifier {
  List<UserDataModel> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/Json/userData.json');
    List users = jsonDecode(json);
    userList = users.map((e) => UserDataModel.fromJson(e)).toList();
    notifyListeners();
  }

  UserDataProvider() {
    jsonParsing();
  }
}
