import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_screen.dart';
import 'theme_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ThemeProvider(),
          ),
        ],
        child: Consumer<ThemeProvider>(builder: (context, tp, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            theme: ThemeData(
                // primarySwatch: Colors.red,
                canvasColor: Colors.white,
                appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
            darkTheme: ThemeData(textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)), canvasColor: Colors.black, appBarTheme: AppBarTheme(backgroundColor: Colors.black)),

            themeMode: tp.isDark ? ThemeMode.dark : ThemeMode.light,
            // A widget which will be started on application startup
            home: MainScreen(),
          );
        }));
  }
}
