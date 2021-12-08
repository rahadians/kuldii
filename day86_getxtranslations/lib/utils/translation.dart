import 'package:get/get_navigation/get_navigation.dart';

class MyTranslation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en' : {
      'title' : 'Flutter Demo Home Page',
      'body' : 'You have pushed the button this many times : ',
    },
    'id' : {
      'title' : 'Demo Home Page Flutter',
      'body' : 'Kamu Sudah menekan sebanyak : '
    }


  };

}