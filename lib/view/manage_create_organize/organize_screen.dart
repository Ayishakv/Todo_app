import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/utils/image_constants.dart';
import 'package:todo_app/view/manage_create_organize/welcome_screen.dart';

class OrganizeScreen extends StatelessWidget {
  const OrganizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//image
            Image.asset(ImageConstants.organize_logo),
            SizedBox(
              height: 30,
            ),
//tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 4,
                  width: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: ColorConstants.mainWhite.withOpacity(.5)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 4,
                  width: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: ColorConstants.mainWhite.withOpacity(.5)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 4,
                  width: 27,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: ColorConstants.mainWhite),
                ),
              ],
            ),
            SizedBox(
              width: 40,
            ),
//main Text
            Text(
              "Orgonaize your tasks",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(
              width: 42,
            ),
//sub text
            Text(
              "You can organize your daily tasks by\n adding your tasks into separate categories",
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
//Next button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      maximumSize: WidgetStatePropertyAll(Size(150, 48)),
                      backgroundColor:
                          WidgetStatePropertyAll(ColorConstants.mainBlue),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                    },
                    child: Text(
                      "Get Started",
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
