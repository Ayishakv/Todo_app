import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Settings",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Settings",
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading:
                Icon(Icons.brush_outlined, color: ColorConstants.mainWhite),
            title: Text(
              "Change app color",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
            trailing:
                Icon(Icons.arrow_forward_ios, color: ColorConstants.mainWhite),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading:
                Icon(Icons.text_fields_sharp, color: ColorConstants.mainWhite),
            title: Text(
              "Change app typography",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
            trailing:
                Icon(Icons.arrow_forward_ios, color: ColorConstants.mainWhite),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading:
                Icon(Icons.language_outlined, color: ColorConstants.mainWhite),
            title: Text(
              "Change app language",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
            trailing:
                Icon(Icons.arrow_forward_ios, color: ColorConstants.mainWhite),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Import",
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 14),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.import_export_outlined,
                color: ColorConstants.mainWhite),
            title: Text(
              "Import from google calender",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            ),
            trailing:
                Icon(Icons.arrow_forward_ios, color: ColorConstants.mainWhite),
          ),
        ],
      ),
    );
  }
}
