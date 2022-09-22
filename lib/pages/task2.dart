import 'package:flutter/material.dart';
import 'package:prefdemo/model/account_model.dart';
import 'package:prefdemo/services/pref_service.dart';

class Task2 extends StatefulWidget {
  const Task2({Key key}) : super(key: key);

  static final String id = "task2";

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _confirmpasController = TextEditingController();

  void _doLogin() {
    String name = _nameController.text.toString().trim();
    String email = _emailController.text.toString().trim();
    String password = _passwordController.text.toString().trim();
    String phone = _phoneController.text.toString().trim();
    String comfirmpas = _confirmpasController.text.toString().trim();

    Account account = Account.from(
        name: name,
        email: email,
        password: password,
        phone: phone,
        confirmpas: comfirmpas);
    Prefs.storeAccount(account);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_sharp),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "Let's Get Started!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Create an account to Q Allure to get all features',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: Colors.blue),
                      color: Colors.white),
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: 'Jsone Williams',
                      hintStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      // border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: TextField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      hintText: 'Phone',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      icon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      // border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white),
                  child: TextField(
                    controller: _confirmpasController,
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.indigo,
                  ),
                  child: TextButton(
                    onPressed: _doLogin,
                    child: const Text(
                      'CREATE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Login here',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
