import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme_provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final tp = context.read<ThemeProvider>();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Switch(
              value: tp.isDark,
              onChanged: (v) {
                tp.toggleTheme();
              }),
        ],
      ),
      body: Center(child: Text('WELCOME!!!')),
    );
  }
}
