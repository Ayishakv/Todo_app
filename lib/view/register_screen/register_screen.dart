import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:todo_app/utils/color_constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//title
            Text(
              "REGISTER",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(
              height: 53,
            ),
//username textfield
            TextField(
              style: TextStyle(color: ColorConstants.mainWhite),
              decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.mainBlue,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
//password textfield
            TextField(
              style: TextStyle(color: ColorConstants.mainWhite),
              obscureText: true,
              obscuringCharacter: '•',
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.mainBlue,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
//confirm password textfield
            TextField(
              style: TextStyle(color: ColorConstants.mainWhite),
              obscureText: true,
              obscuringCharacter: '•',
              decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.mainBlue,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
            SizedBox(
              height: 70,
            ),
//register button
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
                        builder: (context) => RegisterScreen(),
                      ));
                },
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  endIndent: 10,
                  // thickness: 5,
                  // height: 3,
                  color: ColorConstants.mainWhite,
                ),
                Text(
                  "0R",
                  style: TextStyle(color: ColorConstants.mainWhite),
                ),
                Divider(
                  indent: 10,
                  // thickness: 5,
                  // height: 3,
                  color: ColorConstants.mainWhite,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
//login with google button
            ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 48)),
                    backgroundColor:
                        WidgetStatePropertyAll(ColorConstants.mainBlack),
                    side: WidgetStatePropertyAll(
                        BorderSide(color: ColorConstants.mainBlue, width: 2))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Brand(
                      Brands.google,
                      size: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login with google",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16
                          // fontWeight: FontWeight.bold
                          ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
//login with apple button
            ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 48)),
                    backgroundColor:
                        WidgetStatePropertyAll(ColorConstants.mainBlack),
                    side: WidgetStatePropertyAll(
                        BorderSide(color: ColorConstants.mainBlue, width: 2))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Brand(
                      Brands.apple_logo,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login with Apple",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
