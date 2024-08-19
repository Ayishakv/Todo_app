import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_constants.dart';
import 'package:todo_app/utils/image_constants.dart';
import 'package:todo_app/view/global_widgets/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstants.mainBlack,
          leading: Icon(
            Icons.menu,
            color: ColorConstants.mainWhite,
            size: 30,
          ),
          title: Text(
            "Home",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
                fontSize: 28),
          ),
          centerTitle: true,
          actions: [
            CircleAvatar(
              radius: 21,
              backgroundImage: AssetImage(ImageConstants.profile_image),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body:
            // Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image.asset(ImageConstants.homescreen_image),
            //       Text(
            //         "What do you want to do today?",
            //         style: TextStyle(color: ColorConstants.mainWhite, fontSize: 20),
            //       ),
            //       Text(
            //         "Tap + to add your tasks",
            //         style: TextStyle(color: ColorConstants.mainWhite, fontSize: 16),
            //       )
            //     ],
            //   ),
            // ),
            Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
//seach textfield
              TextField(
                controller: searchcontroller,
                style: TextStyle(color: ColorConstants.mainWhite),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstants.mainGrey,
                    ),
                    filled: true,
                    fillColor: ColorConstants.darkGrey.withOpacity(0.5),
                    hintText: "Search for your task...",
                    hintStyle: TextStyle(color: ColorConstants.mainGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: ColorConstants.mainWhite,
                          width: 2,
                        ))),
              ),
              SizedBox(
                height: 50,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => TaskCard(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 5)
            ],
          ),
        ),
      ),
    );
  }
}
