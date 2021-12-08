import 'package:day77_getxnavigation/pages/page1.dart';
import 'package:day77_getxnavigation/pages/page2.dart';
import 'package:day77_getxnavigation/pages/page3.dart';
import 'package:day77_getxnavigation/pages/page4.dart';
import 'package:day77_getxnavigation/pages/page5.dart';
import 'package:day77_getxnavigation/pages/page6.dart';
import 'package:day77_getxnavigation/pages/page7.dart';
import 'package:day77_getxnavigation/routes/route_name.dart';



import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.page_1, page: () => PageSatu()),
    GetPage(name: RouteName.page_2, page: () => PageDua()),
    GetPage(name: RouteName.page_3, page: () => PageTiga()),
    GetPage(name: RouteName.page_4, page: () => PageEmpat()),
    GetPage(name: RouteName.page_5, page: () => PageLima()),
    GetPage(name: RouteName.page_6, page: () => PageEnam()),
    GetPage(name: RouteName.page_7, page: () => PageTujuh()),

  ];
}
