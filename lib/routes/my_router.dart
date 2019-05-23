import 'package:flutter/material.dart';
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
import 'package:flutter_ui/pages/stack_page.dart';
import 'package:flutter_ui/pages/list_title_page.dart';
import 'package:flutter_ui/pages/transform_page.dart';
import 'package:flutter_ui/pages/snack_bar_page.dart';
import 'package:flutter_ui/pages/decorated_box_page.dart';
import 'package:flutter_ui/pages/padding_page.dart';
import 'package:flutter_ui/pages/list_view_page.dart';
import 'package:flutter_ui/pages/grid_view_page.dart';
import 'package:flutter_ui/pages/custom_scroll_view.dart';
import 'package:flutter_ui/pages/page_view_page.dart';
import 'package:flutter_ui/pages/tab_view_page.dart';

class MyRouter {

  // 容器类 Widget
  static final Map<String, WidgetBuilder> layoutRoutes = {
    '/Scaffold_page': (context) => ScaffoldPage(),
    '/Expansion_page': (context) => ExpansionPage(),
    '/TabBar_page': (context) => TabBarPage(),
    '/Container_page': (context) => ContainerPage(),
    '/Row_page': (context) => RowPage(),
    '/Column_page': (context) => ColumnPage(),
    '/Wrap_page': (context) => WrapPage(),
    '/Table_page': (context) => TablePage(),
    '/Stack_page': (context) => StackPage(),
    '/Padding_page': (context) => PaddingPage(),
    '/DecoratedBox_page': (context) => DecoratedBoxPage(),
    '/Flow_page': (context) => FlowPage(),
  };

  // 表单类 Widget
  static final Map<String, WidgetBuilder> formRoutes = {
    '/Form_page': (context) => FormPage(),
    '/ListTitle_page': (context) => ListTitlePage(),
    '/TextField_page': (context) => TextFieldPage(),
    '/Text_page': (context) => TextPage(),
    '/Button_page': (context) => ButtonPage(),
    '/Switch_page': (context) => SwitchPage(),
    '/Chip_page': (context) => ChipPage(),
    '/Radio_page': (context) => RadioPage(),
    '/CheckBox_page': (context) => CheckboxPage(),
    '/DropDown_page': (context) => DropDownPage(),
  };

  // 滚动类 Widget
  static final Map<String, WidgetBuilder> scrollRoutes = {
    '/ListView_page': (context) => ListViewPage(),
    '/GridView_page': (context) => GridViewPage(),
    '/CustomScrollView_page': (context) => CustomScrollViewPage(),
    '/PageView_page': (context) => PageViewPage(),
    '/TabBarView_page': (context) => TabBarViewPage(),
  };

  // 弹出类 Widget
  static final Map<String, WidgetBuilder> popupRoutes = {
    '/Dialog_page': (context) => DialogPage(),
    '/Sheet_page': (context) => SheetPage(),
    '/SnackBar_page': (context) => SnackBarPage(),
    '/Picker_page': (context) => PickerPage(),
    '/Menu_page': (context) => MenuPage(),
  };

  // 功能类 Widget
  static final Map<String, WidgetBuilder> decorateRoutes = {
    '/Search_page': (context) => SearchPage(),
    '/Hero_page': (context) => HeroPage(),
    '/Filter_page': (context) => FilterPage(),
    '/Transform_page': (context) => TransformPage(),
    '/Shape_page': (context) => ShapePage(),
  };

}