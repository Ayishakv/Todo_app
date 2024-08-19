import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

void main() async {
  // runApp(MyApp());
  // await Hive.initFlutter();
  // var box = await Hive.openBox("taskbox");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}
