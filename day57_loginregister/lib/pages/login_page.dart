import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future <String> signInWithGoogle() async{
    final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;


    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken:googleSignInAuthentication.accessToken,
      idToken:googleSignInAuthentication.idToken,
    );

    final UserCredential authResult = await _auth.signInWithCredential(credential);
    final User? user = authResult.user;

    assert(!user!.isAnonymous);
    assert(await user!.getIdToken() != null);

    final User currentUser = await _auth.currentUser!;
    assert(user!.uid == currentUser.uid);

    return 'signInWithGoogle succeeded: $user';

  }

  void signOutGoogle() async{
    await _googleSignIn.signOut();

    print("User Sign Out");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Login Firebase"),),
      backgroundColor: Colors.red[700],
      body:
      Container(
        padding: EdgeInsets.all((20)),
        child: Center(
          child: ElevatedButton(

            onPressed: () =>signInWithGoogle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.developer_board),
                Text(
                  "Google Login",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                )
              ],

            ),),
        ),
      ),
    );
  }
}


