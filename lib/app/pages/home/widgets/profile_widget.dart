import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go2tr/app/common/app_color.dart';
import 'package:go2tr/app/pages/home/logic.dart';
import 'package:sizer/sizer.dart';

import '../../followers/view.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [


            Container(
              width: 100.w,
              height: 169,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 100.w,
                      height: 115,

                      child: Image.asset("assets/images/profile/profile_1.png"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 390,
                      height: 115,

                      child: Stack(
                        children: [
                          Positioned(
                            left: 336,
                            top: 61,
                            child: Container(
                              width: 34,
                              height: 34,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: ShapeDecoration(
                                        color: Colors.black.withOpacity(0.25),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 9,
                                    child: Container(
                                      width: 16,
                                      height: 16,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: MaterialButton(
                                        padding: EdgeInsets.zero,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(56000)
                                         ),
                                          onPressed: () {
                                           Get.find<HomeLogic>().scaffoldkey.currentState!.openDrawer();
                                          },
                                          child: SvgPicture.asset("assets/images/profile/profile_4.svg")),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 61,
                            child: Container(
                              width: 34,
                              height: 34,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: ShapeDecoration(
                                        color: Colors.black.withOpacity(0.25),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9,
                                    top: 9,
                                    child: Container(
                                      width: 16,
                                      height: 16,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child:Center(
                                        child: SvgPicture.asset("assets/images/profile/profile_5.svg"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    left: 141,
                    top: 61,
                    child: Container(
                      width: 108,
                      height: 108,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/108x108"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE8E8E9)),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x268D3D00),
                            blurRadius: 16,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Text(
              'محمدحسین حیدرزاده',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4C4C4C),
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
              ),
            ) ,
            Container(
              height: 5.h,
              decoration: BoxDecoration(
                color: "FCF2E4".toColor(),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/images/profile/profile_2.svg"),
                  Text(
                    '۱۹۶ ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11.sp,
                       fontWeight: FontWeight.w700,
                    ),
                  ),
                  
                  Text(
                    'امتیاز',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              width: 100.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("شما هنوز ایمیل خود را تأیید نکرده‌اید. برای تأیید ایمیل، روی لینک فعال‌سازی که به آدرس mohammadhossein@gmail.com ارسال شده، کلیک کنید.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w300,
                    ),textAlign: TextAlign.center,),
                  SizedBox(height: 2.h,),
                  Container(
                    height: 18,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ویرایش ایمیل',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF003545),
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 16), const SizedBox(width: 16),
                        Text(
                          'ارسال مجدد ایمیل',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF003545),
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
              padding: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                color: AppColor.praimaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              
            ),
            Container(
              width: 100.w,
              height: 9.h,
              margin: EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(vertical: 12),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: Colors.black.withOpacity(0.10000000149011612),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: MaterialButton(
                onPressed: (){
                  Get.to(FollowersPage());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Expanded(child: Container(
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '۵۳۲',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 14.sp,

                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          Text(
                            'دنبال کننده',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ),flex: 1,),
                    Container(
                      width: 1,
                      height: 5.h,
                      color: Colors.black.withOpacity(0.05),
                    ),
                    Expanded(child: Container(
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '۵۳۲',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 14.sp,

                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          Text(
                            'دنبال شده',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ),flex: 1,),
                    Container(
                      width: 1,
                      height: 5.h,
                      color: Colors.black.withOpacity(0.05),
                    ),
                    Expanded(child: Container(
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'جستجو',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 14.sp,

                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          Text(
                            'دوستان جدید',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF4C4C4C),
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ),flex: 1,),


                  ],
                ),
              ),
            ),
            Container(
              width: 100.w,
              height: 10.h,
              margin: EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: "003545".toColor(),

                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: "003545".toColor(),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'دوره فعال شما',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'آموزش زبان انگلیسی - سطح A2',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'مشاهده',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.arrow_back_ios_new,size: 9.sp,color: Colors.white,)
                        ],
                      )
                    ],
                  )
                ],
              )
            ),
            Row(
              children: [
                Expanded(child: Container(
                  height: 18.h,
                  child: Stack(
                    children: [
                      SizedBox.expand(
                        child: Image.asset("assets/images/profile/profile_2.png",fit: BoxFit.fill,),
                      ),
                      Container(
                        padding: EdgeInsets.all(7.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'نقشه راه دوره',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFF68625),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '۲۳ از ۴۰۰',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.sp,

                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'ایستگاه کامل شده',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.sp,

                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),flex: 1,),
                Expanded(child: Container(
                  height: 18.h,
                  child: Stack(
                    children: [
                      SizedBox.expand(
                        child: Image.asset("assets/images/profile/profile_3.png",fit: BoxFit.fill,),
                      ),
                      Container(
                        padding: EdgeInsets.all(7.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'لیدربورد',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFF68625),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '۲۳ از ۴۰۰',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.sp,

                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'موقعیت شما',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.sp,

                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),flex: 1,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
