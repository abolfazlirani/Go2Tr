import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go2tr/app/common/app_color.dart';
import 'package:go2tr/app/pages/home/widgets/curse_widget.dart';
import 'package:go2tr/app/pages/home/widgets/home_widget.dart';
import 'package:go2tr/app/pages/home/widgets/profile_widget.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/drawer_widget.dart';
import 'logic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final logic = Get.put(HomeLogic());
  final state = Get
      .find<HomeLogic>()
      .state;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(
        init: logic,
        builder: (logic) {
      return Scaffold(

        key: logic.scaffoldkey,
        drawer: DraweWidget(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 20

                )
              ], borderRadius: BorderRadius.circular(10
          )
          ),
          margin: EdgeInsets.all(16),
          child: BottomNavigationBar(
            onTap: (s) {
              currentIndex = s ?? 0;
              pageController.animateToPage(currentIndex,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
              setState(() {

              });
            },
            currentIndex: currentIndex,
            selectedItemColor: AppColor.praimaryColor,
            unselectedItemColor: "003545".toColor(),
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w200, color: "003545".toColor()),
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w600, color: AppColor.praimaryColor),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/home/home_12_2.svg"),
                activeIcon: SvgPicture.asset("assets/images/home/home_12.svg"),
                label: "خانه",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/home/home_13.svg"),
                activeIcon: SvgPicture.asset(
                    "assets/images/home/home_13_2.svg"),
                label: "دوره‌ها",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/home/home_14.svg"),
                activeIcon: SvgPicture.asset(
                    "assets/images/home/home_14_2.svg"),
                label: "پروفایل",
              ),

            ],
            elevation: 0,

          ),
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (s) {
            currentIndex = s ?? 0;

            setState(() {

            });
          },
          children: [
            HomeWidget(),
            CurseWidget(),
            ProfileWidget(),
          ],
        ),
      );
    });
  }
}
