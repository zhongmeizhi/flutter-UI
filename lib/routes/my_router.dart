// import 'package:flutter/material.dart';
// pages
import 'package:flutter_ui/pages/scaffold_page.dart';
import 'package:flutter_ui/pages/container_page.dart';
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
import 'package:flutter_ui/pages/radio_page.dart';
import 'package:flutter_ui/pages/expansion_page.dart';
import 'package:flutter_ui/pages/tab_page.dart';
import 'package:flutter_ui/pages/menu_page.dart';
import 'package:flutter_ui/pages/hero_page.dart';
import 'package:flutter_ui/pages/text_page.dart';
import 'package:flutter_ui/pages/switch_page.dart';
import 'package:flutter_ui/pages/text_field_page.dart';
import 'package:flutter_ui/pages/form_page.dart';
import 'package:flutter_ui/pages/row_page.dart';
import 'package:flutter_ui/pages/column_page.dart';
import 'package:flutter_ui/pages/wrap_page.dart';
import 'package:flutter_ui/pages/flow_page.dart';
import 'package:flutter_ui/pages/table_page.dart';

class MyRouter {

  static final routes = {
    '/scaffold_page': (context) => ScaffoldPage(),
    '/container_page': (context) => ContainerPage(),
    '/expansion_page': (context) => ExpansionPage(),
    '/tabBar_page': (context) => TabBarPage(),
    '/dropDown_page': (context) => DropDownPage(),
    '/menu_page': (context) => MenuPage(),
    '/search_page': (context) => SearchPage(),
    '/dialog_page': (context) => DialogPage(),
    '/sheet_page': (context) => SheetPage(),
    '/picker_page': (context) => PickerPage(),
    '/hero_page': (context) => HeroPage(),
    '/filter_page': (context) => FilterPage(),
    '/row_page': (context) => RowPage(),
    '/column_page': (context) => ColumnPage(),
    '/wrap_page': (context) => WrapPage(),
    '/table_page': (context) => TablePage(),
    '/text_page': (context) => TextPage(),
    '/textField_page': (context) => TextFieldPage(),
    '/form_page': (context) => FormPage(),
    '/button_page': (context) => ButtonPage(),
    '/switch_page': (context) => SwitchPage(),
    '/chip_page': (context) => ChipPage(),
    '/radio_page': (context) => RadioPage(),
    '/checkBox_page': (context) => CheckboxPage(),
    '/shape_page': (context) => ShapePage(),
    '/flow_page': (context) => FlowPage(),
  };
  
}