import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/services/pref_service.dart';

class Task1 extends StatefulWidget {
  const Task1({Key key}) : super(key: key);
  static final String id = "task1";

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user = new User(email: email, password: password);
    Prefs.storeUser(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.grey[400],
            Colors.grey[200],
            Colors.grey[100],
          ]),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                Image.asset(
                  'assets/images/welcome.jpg',
                  // height: 100,
                  width: 200,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 16.0, bottom: 8.0),
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                const Text(
                  'Log in to your existant account of Q Allure',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.blue
                    )
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Jonewilliasm@gmail.com',
                      hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(
                          width: 1,
                          color: Colors.blue
                      )
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Jonewilliasm@gmail.com',
                      hintStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 14),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
