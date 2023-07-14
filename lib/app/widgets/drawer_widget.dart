import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go2tr/app/common/app_color.dart';
import 'package:sizer/sizer.dart';

class DraweWidget extends StatelessWidget {

  const DraweWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top+4.h),
      width: 90.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50)
        )
      ),
      padding: EdgeInsets.all(21),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Row(
              children: [
                SvgPicture.asset("assets/images/profile/profile_13.svg"),
                Text("بستن",style: TextStyle(color:"003545".toColor() ),),

              ],
            ),
          ),
          SizedBox(height: 4.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_6.svg"),
              SizedBox(width: 3.w,),
              Text(
                'تنظیمات',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF191921),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPicture.asset("assets/images/profile/profile_14.svg"),

            ],
          ),

         SizedBox(height: 2.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_7.svg"),
              SizedBox(width: 3.w,),
              Text(
                'درباره GO2TRain',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF191921),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPicture.asset("assets/images/profile/profile_14.svg"),

            ],
          ),
         SizedBox(height: 2.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_8.svg"),
              SizedBox(width: 3.w,),
              Text(
                'تماس با ما',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF191921),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPicture.asset("assets/images/profile/profile_14.svg"),

            ],
          ),
         SizedBox(height: 2.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_9.svg"),
              SizedBox(width: 3.w,),
              Text(
                'ارسال ایمیل به پشتیبانی',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF191921),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPicture.asset("assets/images/profile/profile_14.svg"),

            ],
          ),
         SizedBox(height: 2.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_10.svg"),
              SizedBox(width: 3.w,),
              Text(
                'سیاست‌های حریم خصوصی',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF191921),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPicture.asset("assets/images/profile/profile_14.svg"),

            ],
          ),
         SizedBox(height: 2.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_11.svg"),
              SizedBox(width: 3.w,),
              Text(
                'سوالات متداول',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF191921),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              SvgPicture.asset("assets/images/profile/profile_14.svg"),

            ],
          ),
         SizedBox(height: 2.h,),
          Row(
            children: [
              SvgPicture.asset("assets/images/profile/profile_12.svg"),
              SizedBox(width: 3.w,),
              Text(
                'خروج از حساب',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFFE50000),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),

            ],
          ),

        ],
      )
      ,
    );
  }
}
