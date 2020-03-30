import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'network.dart';

class AppService extends ChangeNotifier {
  Box _data;

  var loading = false;
  var _network = NetworkService();

  AppService() {
    initHiveStore();
  }
  // var data = await _network.getData(path: '/search/barcode/$searchText');

  void initHiveStore() async {
    Directory _dir = await getApplicationDocumentsDirectory();
    Hive.init(_dir.path);
    _data = await Hive.openBox('scan_history');
  }

  void setLoading(s) {
    this.loading = s;
    notifyListeners();
  }
}
