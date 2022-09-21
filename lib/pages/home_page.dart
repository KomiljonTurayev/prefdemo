import 'package:flutter/material.dart';
import 'package:prefdemo/services/pref_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myname = "";

  void showName(String name) {
    setState(() {
      myname = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Prefs.storeName("Komiljon");
                },
                child: Text("Store Name")),
            TextButton(
              onPressed: () {
                Prefs.loadName().then((name) => {
                      showName(name),
                    });
              },
              child: Text("Load Name"),
            ),
            Text('Name: ' + myname)
          ],
        ),
      ),
    );
  }
}
