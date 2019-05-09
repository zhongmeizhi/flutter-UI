// import 'package:flutter/material.dart';
// pages
import 'package:flutter_ui/pages/container_page.dart';
import 'package:flutter_ui/pages/scaffold_page.dart';
import 'package:flutter_ui/pages/button_page.dart';
import 'package:flutter_ui/pages/dialog_page.dart';
import 'package:flutter_ui/pages/sheet_page.dart';
import 'package:flutter_ui/pages/picker_page.dart';
import 'package:flutter_ui/pages/search_page.dart';
import 'package:flutter_ui/pages/filter_page.dart';

class MyRouter {

  static final routes = {
    '/scaffold_page': (context) => ScaffoldPage(),
    '/container_page': (context) => ContainerPage(),
    '/button_page': (context) => ButtonPage(),
    '/dialog_page': (context) => DialogPage(),
    '/sheet_page': (context) => SheetPage(),
    '/picker_page': (context) => PickerPage(),
    '/search_page': (context) => SearchPage(),
    '/filter_page': (context) => FilterPage(),
    '/8': (context) => ContainerPage(),
  };
  
}