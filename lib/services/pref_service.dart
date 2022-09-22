import 'dart:convert';

import 'package:prefdemo/model/account_model.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  // Name Related
  static void storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }

  static Future<String> loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name").toString();
  }

  static Future<bool> removeName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // for user
  static storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    prefs.setString('user', stringUser);
  }

  static Future<User> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = prefs.getString("user");
    if(stringUser == null || stringUser.isEmpty) return null;

    Map map = jsonDecode(stringUser);
    return User.fromJson(map);
  }
  static Future<bool> removeUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }

  // for account
static storeAccount(Account account) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String stringAccount = jsonEncode(account);
  prefs.setString('account', stringAccount);
  }

  static Future<Account> loadAccount()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringAccount = prefs.getString('account');
    if(stringAccount == null || stringAccount.isEmpty) return null;

    Map map = jsonDecode(stringAccount);
    return Account.fromJson(map);
  }

  static Future<bool> removeAccount() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("account");
  }
}
