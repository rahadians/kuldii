import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get request
  // final url = "https://kuldii-getconnect-project-default-rtdb.asia-southeast1.firebasedatabase.app/users.json";
  final url ="https://reqres.in/api/users/2";


  // Future<Response> getUser(int id) => get('http://youapi/users/$id');
  Future<Response> getUser() => get("${url}");
  // Future<Response> getUser() => get('https://reqres.in/api/users/2');



  // Post request
  // Future<Response> postUser(Map data) => post('http://youapi/users', body: data);
  // // Post request with File
  // Future<Response<CasesModel>> postCases(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('http://youapi/users/upload', form);
  // }
  //
  // GetSocket userMessages() {
  //   return socket('https://yourapi/users/socket');
  // }
}
