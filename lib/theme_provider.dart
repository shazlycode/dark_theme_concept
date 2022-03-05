import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool? _isDark = true;

  bool get isDark => _isDark!;

  toggleTheme() async {
    _isDark = !_isDark!;
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('themeData', _isDark!);
    notifyListeners();
  }

  void getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('themeData')) {
      _isDark = prefs.getBool('themeData');
    } else {
      _isDark = false;
    }
    notifyListeners();
  }

  ThemeProvider() {
    getTheme();
  }
}
