import 'package:get/get.dart';

class My_Logic extends GetxController {

  var count =0 ;

  void change () {
    count++;
    update();
  }

    void reset(){
      count=0;
      update();
    }


    @override
  void onInit() {
    // TODO: implement onInit
    //   ever[]
    //   ever(count, ()=>print("dijalankan ever"));
    //   debounce();

    super.onInit();
  }
}
