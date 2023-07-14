import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go2tr/app/common/app_color.dart';
import 'package:sizer/sizer.dart';

import 'controller.dart';

class FollowersPage extends StatelessWidget {
  const FollowersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FollowersController());
    final state = Get.find<FollowersController>().state;

    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            GestureDetector(
              onTap: (){
              },
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/profile/profile_13.svg"),
                  SizedBox(width: 2.w,),
                  Text("پروفایل",style: TextStyle(color:"003545".toColor() ),),

                ],
              ),
            ),

            Container(
              width: 100.w,
              height: 5.h,
              margin: EdgeInsets.symmetric(vertical: 3.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: "245D72".toColor())
              ),
              child: Stack(
                children: [
                  SizedBox.expand(
                    child: Row(
                      children: [

                        Expanded(child: Container(
                          decoration: BoxDecoration(
                              color: "245D72".toColor(),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )

                          ),
                        ),flex: 1,),
                        Expanded(flex: 1,child: Container(),),
                        Expanded(flex: 1,child: Container(),),
                      ],
                    ),
                  ),

                  SizedBox.expand(
                    child: Row(
                      children: [

                        Expanded(child: Center(child: Text("دنبال‌کننده‌ها",style: TextStyle(color: Colors.white),),),flex: 1,),
                        Expanded(child: Center(child: Text("دنبال‌کننده‌ها",style: TextStyle(color: "245D72".toColor()),),),flex: 1,),
                        Expanded(child: Center(child: Text("جستجو",style: TextStyle(color: "245D72".toColor()),),),flex: 1,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100.w,
              height: 7.h,
              decoration: BoxDecoration(

                border: Border.all(color: "D7F3FF".toColor(),),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(

                children: [
                  SvgPicture.asset("assets/images/follower/follower_1.svg"),
                  SizedBox(width: 4.w,),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "جستجو",
                      hintStyle: TextStyle(
                        color: "98C2D5".toColor()
                      )
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 2.h),
              width: 100.w,
              height: 9.h,
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 20

                    )
                  ]
              ),
              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 7),
              child: Row(
                children: [

                  Image.asset("assets/images/follower/follower_2.png"),
                  SizedBox(width: 3.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'بهناز',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF003545),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '@behnaz',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF245D72),
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Container(
                        height: 3.h,
                        decoration: BoxDecoration(
                          color: "FFF3E0".toColor().withOpacity(0.99),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset("assets/images/follower/follower_2.svg"),
                            Text(
                              '۱۹۶ ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFB8D00),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Container(
                        height: 3.h,
                        decoration: BoxDecoration(
                          color: "008EFF".toColor(),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset("assets/images/follower/follower_3.svg"),

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
