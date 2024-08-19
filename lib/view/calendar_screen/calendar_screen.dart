import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/view/global_widgets/task_card.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Calendar",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //scroll calender
            EasyDateTimeLine(
              dayProps: EasyDayProps(
                  inactiveDayStyle: DayStyle(
                      dayNumStyle: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold))),
              initialDate: DateTime.now(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.mainGrey.withOpacity(.5),
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        //today button
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 49,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorConstants.darkGrey,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: ColorConstants.mainWhite,
                              )),
                          child: Center(
                            child: Text(
                              "Today",
                              style: TextStyle(color: ColorConstants.mainWhite),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        //completed button
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 49,
                          // width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorConstants.darkGrey,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                color: ColorConstants.mainWhite,
                              )),
                          child: Center(
                            child: Text(
                              "Completed",
                              style: TextStyle(color: ColorConstants.mainWhite),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //task card
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => TaskCard(
                            date: "",
                            tasktitle: "",
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 15,
                          ),
                      itemCount: 5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
