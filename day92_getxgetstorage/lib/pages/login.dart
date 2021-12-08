import 'package:day92_getxgetstorage/controller/auth_controller.dart';
import 'package:day92_getxgetstorage/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logC = Get.find<LoginC>();
    final logAuth = Get.find<AuthC>();

    var nilai = logC.hiden.value;

    return Scaffold(
      appBar: AppBar(
        title: Text("$nilai"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: logC.emailC,
              autocorrect: false,
              decoration: InputDecoration(
                  labelText: "Email", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            Obx(() => TextField(
                controller: logC.passC,
                autocorrect: false,
                obscureText: logC.hiden.value,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () => logC.hiden.toggle(),
                      icon: logC.hiden.value
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined)),
                ))),
            SizedBox(
              height: 10,
            ),
            Obx(() => CheckboxListTile(
                  value: logC.rememberme.value,
                  onChanged: (value) => logC.rememberme.toggle(),
                  title: Text("Remember Me"),
                  controlAffinity: ListTileControlAffinity
                      .leading, // ini untuk posisi kotak checkboxnya
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  logAuth.login(
                      logC.emailC.text, logC.passC.text, logC.rememberme.value);
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
