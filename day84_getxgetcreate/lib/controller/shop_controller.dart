import 'package:get/get.dart';

class ShopController extends GetxController{

  var quantity=0.obs;
  var total =0.obs;

  void tambah(){
    quantity++;
    total=total+1;
    // update();
  }

  void kurang(){
    quantity--;
    total=total-1;
    // update();
  }

}