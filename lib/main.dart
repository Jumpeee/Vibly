import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/homepage.dart';
import './widgets/custompagebuilder.dart';

void main() async {
  runApp(const App());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color.fromARGB(255, 23, 23, 25),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lato",
        primaryColor: const Color.fromARGB(255, 187, 255, 0),
        bottomAppBarColor: const Color.fromARGB(255, 140, 140, 140),
        backgroundColor: const Color.fromARGB(255, 23, 23, 25),
      ),
      home: const CustomPageBuilder(
        page: HomePage(),
      ),
    );
  }
}
