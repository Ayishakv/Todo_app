import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/utils/image_constants.dart';
import 'package:todo_app/view/manage_create_organize/manage_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ManageScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.splash_logo,
              height: 113,
            ),
            Text(
              "UpTodo",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
