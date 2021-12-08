import '../pages/home_page.dart';
import '../pages/login.dart';
import 'package:get/get.dart';
import '../routes/route_name.dart';

class AppPage{
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage(),),
    GetPage(name: RouteName.login, page: () => LoginPage(),),

  ];
}