import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/utils/image_constants.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({super.key});

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {
  CountDownController countDownController = CountDownController();
  List<String> dropvalues = [
    "This week",
    "This Month",
  ];
  late String dropdownvalues;
  @override
  void initState() {
    dropdownvalues = dropvalues.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Focus Mode",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
//circular count down timer
            Center(
              child: CircularCountDownTimer(
                controller: countDownController,
                width: 213,
                height: 213,
                duration: 3600,
                fillColor: ColorConstants.mainBlue,
                ringColor: ColorConstants.darkGrey,
                initialDuration: 0,
                strokeCap: StrokeCap.round,
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                    fontSize: 33.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                autoStart: false,
              ),
            ),
            SizedBox(
              height: 20,
            ),
//text under timer
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "While your focus mode is on, all of your \nnotifications will be off",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
//start button
            InkWell(
              onTap: () => countDownController.start,
              child: Container(
                height: 48,
                width: 177,
                decoration: BoxDecoration(
                    color: ColorConstants.mainBlue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Start Focusing",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
//overview
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Overview",
                  style:
                      TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
                ),
                DropdownButton(
                  dropdownColor: ColorConstants.darkGrey,
                  style: TextStyle(color: ColorConstants.mainWhite),
                  value: dropdownvalues,
                  items: List.generate(
                    dropvalues.length,
                    (index) => DropdownMenuItem(
                      child: Text(dropvalues[index]),
                      value: dropvalues[index],
                    ),
                  ),
                  onChanged: (value) {
                    dropdownvalues = value!;
                    setState(() {});
                  },
                )
              ],
            ),
            Image.asset(ImageConstants.focus_screen_graph)
          ],
        ),
      ),
    );
  }
}
