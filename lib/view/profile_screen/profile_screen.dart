import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/utils/image_constants.dart';
import 'package:todo_app/view/settings_screen/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Profile",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//profile picture
              Center(
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage(ImageConstants.profile_image),
                ),
              ),
              SizedBox(
                height: 10,
              ),
//name
              Center(
                child: Text(
                  "Name",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
//task left and done
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: ColorConstants.darkGrey,
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      "10 task left",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: ColorConstants.darkGrey,
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      "5 task done",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
//settings
              Text(
                "Settings",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ));
                },
                leading: Icon(Icons.settings_outlined,
                    color: ColorConstants.mainWhite),
                title: Text(
                  "App Settings",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 10,
              ),
//account
              Text(
                "Account",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  name_edit_alertbox(context);
                },
                leading:
                    Icon(Icons.person_outline, color: ColorConstants.mainWhite),
                title: Text(
                  "Change account name",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  password_edit_alertbox(context);
                },
                leading:
                    Icon(Icons.key_outlined, color: ColorConstants.mainWhite),
                title: Text(
                  "Change account password",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: ColorConstants.darkGrey,
                    context: context,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Text(
                              "Change account image",
                              style: TextStyle(
                                  color: ColorConstants.mainWhite,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Divider(
                            color: ColorConstants.mainGrey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Take picture",
                            style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Import from Gallery",
                            style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Import from Google Drive",
                            style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                leading: Icon(Icons.camera_alt_outlined,
                    color: ColorConstants.mainWhite),
                title: Text(
                  "Change account image",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
//uptodo
              Text(
                "Uptodo",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading:
                    Icon(Icons.view_comfy_alt, color: ColorConstants.mainWhite),
                title: Text(
                  "About Us",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading:
                    Icon(Icons.info_outline, color: ColorConstants.mainWhite),
                title: Text(
                  "FaQ",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading:
                    Icon(Icons.bolt_outlined, color: ColorConstants.mainWhite),
                title: Text(
                  "Help and Feedback",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Icon(Icons.thumb_up_alt_outlined,
                    color: ColorConstants.mainWhite),
                title: Text(
                  "Support Us",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: ColorConstants.mainWhite),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading:
                    Icon(Icons.logout_outlined, color: ColorConstants.mainRed),
                title: Text(
                  "Logout",
                  style: TextStyle(color: ColorConstants.mainRed, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> password_edit_alertbox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: ColorConstants.darkGrey,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Change account password",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: ColorConstants.mainGrey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter old password",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: ColorConstants.mainWhite),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: ColorConstants.mainWhite))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter new password",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: ColorConstants.mainWhite),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: ColorConstants.mainWhite))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: ColorConstants.mainBlue, fontSize: 16),
                    )),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                      color: ColorConstants.mainBlue,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> name_edit_alertbox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: ColorConstants.darkGrey,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Change account name",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: ColorConstants.mainGrey,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: ColorConstants.mainWhite),
              decoration: InputDecoration(
                  hintText: "name",
                  hintStyle: TextStyle(color: ColorConstants.mainWhite),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: ColorConstants.mainWhite))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: ColorConstants.mainBlue, fontSize: 16),
                    )),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    decoration: BoxDecoration(
                      color: ColorConstants.mainBlue,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
