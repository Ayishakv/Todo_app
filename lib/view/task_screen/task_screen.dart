import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool onchecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          color: ColorConstants.mainWhite,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
//checkbox,title,subtitle,edit button
            ListTile(
              leading: Checkbox(
                side: BorderSide(color: ColorConstants.mainGrey),
                checkColor: ColorConstants.mainWhite,
                activeColor: ColorConstants.mainBlue,
                value: false,
                onChanged: (value) {
                  if (value != null) {
                    onchecked = value;
                  }
                  setState(() {});
                },
              ),
              title: Text(
                "data",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
              ),
              subtitle: Text(
                "data",
                style: TextStyle(color: ColorConstants.mainGrey, fontSize: 16),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: ColorConstants.mainWhite,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
// task time
            ListTile(
              leading: Icon(
                Icons.timer_outlined,
                color: ColorConstants.mainGrey,
              ),
              title: Text(
                "Task Time :",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.darkGrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Today at 12:00",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
//task category
            ListTile(
              leading: Icon(
                Icons.sell_outlined,
                color: ColorConstants.mainGrey,
              ),
              title: Text(
                "Task Category :",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.darkGrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "work",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
//task priority
            ListTile(
              leading: Icon(
                Icons.flag_outlined,
                color: ColorConstants.mainGrey,
              ),
              title: Text(
                "Task Priority :",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.darkGrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Default",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
//sub task
            ListTile(
              leading: Icon(
                Icons.subdirectory_arrow_right,
                color: ColorConstants.mainGrey,
              ),
              title: Text(
                "Sub - Task",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.darkGrey,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Add Sub-Task",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
//delete task
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: ColorConstants.mainRed,
              ),
              title: Text(
                "Delete Task",
                style: TextStyle(color: ColorConstants.mainRed, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
