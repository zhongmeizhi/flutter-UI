// pages
import 'package:flutter_ui/pages/cupertino/button_page.dart';
import 'package:flutter_ui/pages/cupertino/dialog_page.dart';
import 'package:flutter_ui/pages/cupertino/picker_page.dart';
import 'package:flutter_ui/pages/cupertino/sheet_page.dart';
import 'package:flutter_ui/pages/cupertino/slider_page.dart';
import 'package:flutter_ui/pages/cupertino/switch_page.dart';
import 'package:flutter_ui/pages/cupertino/text_field.dart';
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
import 'package:flutter_ui/pages/will_pop_scope_page.dart';
import 'package:flutter_ui/pages/gesture_detector_page.dart';
import 'package:flutter_ui/pages/notification_page.dart';
import 'package:flutter_ui/pages/indexed_stack_page.dart';
import 'package:flutter_ui/pages/overlay_page.dart';
import 'package:flutter_ui/pages/circle_avatar_page.dart';
import 'package:flutter_ui/pages/refresh_indicator_page.dart';
import 'package:flutter_ui/pages/method_channel_page.dart';
import 'package:flutter_ui/pages/navigator_page.dart';

class MyRouter {

  static List get routes => [
    {
      "name": "容器类 Widget",
      "route": {
        '/Scaffold_page': (context) => ScaffoldPage(),
        '/IndexedStack_page': (context) => IndexedStackPage(),
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
        '/CircleAvatar_page': (context) => CircleAvatarPage(),
        '/Flow_page': (context) => FlowPage(),
      }
    }, {
      "name": "表单类 Widget",
      "route": {
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
      }
    }, {
      "name": "滚动类 Widget",
      "route": {
        '/ListView_page': (context) => ListViewPage(),
        '/GridView_page': (context) => GridViewPage(),
        '/CustomScrollView_page': (context) => CustomScrollViewPage(),
        '/PageView_page': (context) => PageViewPage(),
        '/TabBarView_page': (context) => TabBarViewPage(),
      }
    }, {
      "name": "弹出类 Widget",
      "route": {
        '/Dialog_page': (context) => DialogPage(),
        '/Sheet_page': (context) => SheetPage(),
        '/SnackBar_page': (context) => SnackBarPage(),
        '/Picker_page': (context) => PickerPage(),
        '/Menu_page': (context) => MenuPage(),
        '/Overlay_page': (context) => OverlayPage(),
      }
    }, {
      "name": "功能类 Widget",
      "route": {
        '/WillPopScope_page': (context) => WillPopScopePage(),
        '/Search_page': (context) => SearchPage(),
        '/RefreshIndicator_page': (context) => RefreshIndicatorPage(),
        '/Hero_page': (context) => HeroPage(),
        '/Notification_page': (context) => NotificationPage(),
        '/GestureDetector_page': (context) => GestureDetectorPage(),
        '/Filter_page': (context) => FilterPage(),
        '/Transform_page': (context) => TransformPage(),
        '/Navigator_page': (context) => NavigatorPage(),
        '/Shape_page': (context) => ShapePage(),
        '/MethodChannel_page': (context) => MethodChannelPage(),
      }
    }, {
      "name": "IOS样式类 Widget",
      "route": {
        '/IosSwitch_page': (context) => IosSwitchPage(),
        '/IosButton_page': (context) => IosButtonPage(),
        '/IosField_page': (context) => IosTextFieldpage(),
        '/IosSlider_page': (context) => IosSliderPage(),
        '/IosSheet_page': (context) => IosSheetPage(),
        '/IosPicker_page': (context) => IosPicker(),
        '/IosDialog_page': (context) => IosDialog(),
      }
    }
  ];
  
}