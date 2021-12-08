import 'package:day78_getxdynamicurl/pages/detail.dart';

import '../pages/home_page.dart';
import '../routes/route_name.dart';

import '../pages/product.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage()),
    GetPage(name: RouteName.product, page: () => Product()),
    GetPage(name: RouteName.product + '/:id?', page: () => DetailPage()),
  ];
}
