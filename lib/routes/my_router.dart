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
import 'package:flutter_ui/pages/shape_page.dart';
import 'package:flutter_ui/pages/chip_page.dart';
import 'package:flutter_ui/pages/drop_down_page.dart';
import 'package:flutter_ui/pages/check_box_page.dart';

class MyRouter {

  static final routes = {
    '/scaffold_page': (context) => ScaffoldPage(),
    '/container_page': (context) => ContainerPage(),
    '/filter_page': (context) => FilterPage(),
    '/shape_page': (context) => ShapePage(),
    '/button_page': (context) => ButtonPage(),
    '/chip_page': (context) => ChipPage(),
    '/dropDown_page': (context) => DropDownPage(),
    '/checkBox_page': (context) => CheckboxPage(),
    '/dialog_page': (context) => DialogPage(),
    '/sheet_page': (context) => SheetPage(),
    '/picker_page': (context) => PickerPage(),
    '/search_page': (context) => SearchPage(),
  };
  
}