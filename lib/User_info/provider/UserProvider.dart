import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/UserModal.dart';

class UserProvider extends ChangeNotifier {
  List<UserModel> userData = [];
  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/userData.json');
    List users = jsonDecode(json);

    userData = users
        .map(
          (e) => UserModel.fromjson(e),
        )
        .toList();
    notifyListeners();
  }

  UserProvider() {
    jsonParsing();
  }
}
