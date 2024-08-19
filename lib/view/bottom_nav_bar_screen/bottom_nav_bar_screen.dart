import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/view/add_button_screen/add_button_screen.dart';
import 'package:todo_app/view/calendar_screen/calendar_screen.dart';
import 'package:todo_app/view/focus_screen/focus_screen.dart';
import 'package:todo_app/view/home_screen/home_screen.dart';
import 'package:todo_app/view/profile_screen/profile_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  TextEditingController taskcontroller = TextEditingController();
  TextEditingController descontroller = TextEditingController();

  int selectedindex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    CalendarScreen(),
    AddButtonScreen(),
    FocusScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedindex],
      backgroundColor: ColorConstants.mainBlack,
      bottomNavigationBar: Stack(
        children: [
          Container(height: 124, color: Colors.transparent),
          Positioned(
            child: Container(
              // alignment: Alignment.bottomRight,
              height: 90,
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      label: "Home",
                      activeIcon: Icon(Icons.home_filled)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_month_outlined),
                      label: "Calender",
                      activeIcon: Icon(Icons.calendar_month)),
                  BottomNavigationBarItem(icon: SizedBox(), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.schedule_outlined),
                      label: "Focus",
                      activeIcon: Icon(Icons.schedule)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline),
                      label: "Profile",
                      activeIcon: Icon(Icons.person))
                ],
                backgroundColor: ColorConstants.darkGrey,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: ColorConstants.mainWhite,
                unselectedItemColor: ColorConstants.mainWhite,
                currentIndex: selectedindex,
                onTap: (value) {
                  selectedindex = value;
                  if (value == 2) {
                    add_button_section(
                        taskcontroller: taskcontroller,
                        descontroller: descontroller);
                  } else {
                    setState(() {});
                  }
                },
              ),
            ),
          ),
//Add button
          Positioned(
            left: 175,
            child: add_button_section(
                taskcontroller: taskcontroller, descontroller: descontroller),
          ),
        ],
      ),
    );
  }
}

class add_button_section extends StatelessWidget {
  const add_button_section({
    super.key,
    required this.taskcontroller,
    required this.descontroller,
  });

  final TextEditingController taskcontroller;
  final TextEditingController descontroller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: ColorConstants.darkGrey,
            title: Text(
              "Add Task",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            content: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: taskcontroller,
                    style: TextStyle(color: ColorConstants.mainWhite),
                    decoration: InputDecoration(
                        hintText: "Task",
                        hintStyle: TextStyle(color: ColorConstants.mainWhite),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: ColorConstants.mainWhite))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: descontroller,
                    style: TextStyle(color: ColorConstants.mainWhite),
                    decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle: TextStyle(color: ColorConstants.mainWhite),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: ColorConstants.mainWhite))),
                  ),
                ],
              ),
            ),
            actions: [
              //date and time button
              IconButton(
                  onPressed: () {
                    showDatePicker(
                        confirmText: "Choose Time",
                        context: context,
                        firstDate: DateTime(2024),
                        lastDate: DateTime.now());
                    TimePickerDialog(
                      initialTime: TimeOfDay.now(),
                      confirmText: "Save",
                    );
                  },
                  icon: Icon(
                    Icons.timer_outlined,
                    color: ColorConstants.mainWhite,
                  )),
              //category button
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sell_outlined,
                    color: ColorConstants.mainWhite,
                  )),
              //task priority button
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: ColorConstants.darkGrey,
                        content: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Task Priority",
                                style: TextStyle(
                                    color: ColorConstants.mainWhite,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: ColorConstants.mainGrey,
                              ),
                              GridView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4),
                                itemBuilder: (context, index) => InkWell(
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        color: ColorConstants.mainBlack
                                            .withOpacity(0.5)),
                                    child: Column(
                                      children: [
                                        Icon(Icons.flag_outlined),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              color: ColorConstants.mainWhite),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.flag_outlined,
                    color: ColorConstants.mainWhite,
                  )),
              SizedBox(
                width: 30,
              ),
              //send button
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: ColorConstants.mainBlue,
                  ))
            ],
            actionsAlignment: MainAxisAlignment.start,
          ),
        );
      },
      child: CircleAvatar(
        radius: 32,
        backgroundColor: ColorConstants.mainBlue,
        child: Icon(
          Icons.add,
          color: ColorConstants.mainWhite,
        ),
      ),
    );
  }
}
