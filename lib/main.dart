import 'package:bwa_flutix/services/services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  child: Text("Sign Up"),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signUp(
                        "jennie@blackpink.com",
                        "123456",
                        "Jennie",
                        ["Action", "Horror", "Music", "Drama"],
                        "Korean");

                    if (result.user == null) {
                      print(result.message);
                    } else {
                      print(result.user.toString());
                    }
                  }),
              ElevatedButton(
                  child: Text("Sign In"),
                  onPressed: () async {
                    SignInSignUpResult result = await AuthServices.signIn(
                      "jennie@blackpink.com",
                      "123456",
                    );

                    if (result.user == null) {
                      print(result.message);
                    } else {
                      print(result.user.toString());
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
