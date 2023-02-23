import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tinder_clone/src/features/authentication/domain/user_account.dart';

class DataUserAccountLocal {
  static const userAccountKey = "userAccountKey";

  static getDataUserAccountFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getString(userAccountKey) ?? "";
    return jsonDecode(result);
  }

  static void setDataUserAccountFromStorage(UserAccount userAccount) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      userAccountKey,
      jsonEncode(
        userAccount.toMap(),
      ),
    );
  }
}

class UserAccountRegister {
  static const userIsRegisterKey = "userIsRegisterKey";

  static Future<bool> getUserAccountRegister() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userIsRegisterKey) ?? false;
  }

  static void setUserIsRegister(bool isRegister) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userIsRegisterKey, isRegister);
  }

  static userLogoutRequest() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(userIsRegisterKey);
  }
}
