import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/view/login_screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
                children: [
                  Text(
                    "Welcome to UpTodo",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    "Please login to your account or create\n new account to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      minimumSize:
                          WidgetStatePropertyAll(Size(double.infinity, 48)),
                      backgroundColor:
                          WidgetStatePropertyAll(ColorConstants.mainBlue),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 28,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                        minimumSize:
                            WidgetStatePropertyAll(Size(double.infinity, 48)),
                        backgroundColor:
                            WidgetStatePropertyAll(ColorConstants.mainBlack),
                        side: WidgetStatePropertyAll(BorderSide(
                            color: ColorConstants.mainBlue, width: 2))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
