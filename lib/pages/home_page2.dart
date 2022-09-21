import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/services/pref_service.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key key}) : super(key: key);

  static final String id = "home_page2";

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user = new User.from(email: email, password: password);
    Prefs.storeUser(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: TextButton(
                onPressed: _doLogin,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
