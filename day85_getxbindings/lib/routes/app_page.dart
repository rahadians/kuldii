
import '../bindings/count_binding.dart';

import '../pages/count_page.dart';
import '../pages/home_page.dart';
import '../routes/route_name.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage()),
    GetPage(name: RouteName.count, page: () => CountPage(),
        binding: CountB())
  ];
}
