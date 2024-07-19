import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/homemodal.dart';

class HomeProvider extends ChangeNotifier {
  List<HomeModal> jsonDataList = [];
  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/jsonData.json');
    List jsonList = jsonDecode(json);
    return jsonList;
  }

  Future<void> fromList() async {
    List jsonList = await jsonParsing();
    jsonDataList = jsonList.map((e) => HomeModal.fromMap(e)).toList();
    notifyListeners();
  }

  HomeProvider() {
    fromList();
  }
}
