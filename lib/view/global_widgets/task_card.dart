import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/view/task_screen/task_screen.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool onchecked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskScreen(),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: ColorConstants.darkGrey,
            borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              //checkbox
              Checkbox(
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
              SizedBox(
                width: 10,
              ),
              //title
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "homework",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 18),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      //date and time
                      Text(
                        "Today at 12:00",
                        style: TextStyle(
                            color: ColorConstants.mainGrey, fontSize: 15),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      //category
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.mainBlue,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Icon(Icons.work_outline),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "work",
                                style:
                                    TextStyle(color: ColorConstants.mainWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //task priority
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.darkGrey.withOpacity(0.5),
                            border: Border.all(color: ColorConstants.mainBlue),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.flag_outlined,
                                color: ColorConstants.mainGrey,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "1",
                                style:
                                    TextStyle(color: ColorConstants.mainGrey),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
