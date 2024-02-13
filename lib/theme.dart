// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class appController extends ChangeNotifier{
  static appController instance = appController();
  bool dartTheme = false;
  changeTheme(){
    dartTheme = !dartTheme;
    notifyListeners();
  }
}