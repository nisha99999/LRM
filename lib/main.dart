import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'main_menu.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        scaffoldBackgroundColor: Color(0xFF16B8AE),
        //primaryTextTheme: GoogleFonts.latoTextTheme(),

      ),
      title: "LRM",
      debugShowCheckedModeBanner: false,
      home: MainMenuPage(),
    );
  }

}


