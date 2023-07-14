import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../common/app_color.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  List images =
  [
    "",
    "",
    "",
    "",
    "",
    "",

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [

          SizedBox(height: 5.h,),

          Container(
            width: 100.w,
            height: 25.h,
            child:
            CarouselSlider.builder(
              carouselController: _controller,
              itemCount: images.length,

              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    height: (24.5).h,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Stack(
                      children: [

                        Align(

                          child: Container(
                            width: 100.w,
                            height: 23.h,

                            decoration: BoxDecoration(
                                color: AppColor.praimaryColor,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SvgPicture.asset("assets/images/home/home_1.svg"),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Opacity(
                                      opacity: 0.1,
                                      child: Container(
                                          margin: EdgeInsets.all(16),
                                          child: Image.asset("assets/images/home/home_2.png",height: 12.h,))),
                                ),
                                Container(
                                  padding: EdgeInsets.all(3.w),
                                  child: SizedBox.expand(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 12.w,
                                          height: 7.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.25),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Image.asset("assets/images/home/home_3.png",height: 2.h,),
                                              Text("A" + itemIndex.toString(),style: GoogleFonts.roboto(fontWeight: FontWeight.bold,color: Colors.white),)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(vertical: 1.h),
                                          child: Text("آموزش زبان انگلیسی - سطح A2",style: TextStyle(fontWeight: FontWeight.bold,
                                              color: Colors.white,fontSize: 16.sp),),
                                        ),
                                        Text("۲۳ از ۳۴ درس مشاهده شده",style: TextStyle(fontWeight: FontWeight.w100,
                                            color: Colors.white,fontSize: 9.sp),),
                                        SizedBox(height: 2.h,),
                                        Row(
                                          children: [
                                            Expanded(child: Container(
                                              child:MaterialButton(

                                                child: Center(
                                                  child: Text("ادامه آموزش",style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.praimaryColor),),
                                                ),
                                                onPressed: (){},
                                              ),
                                              decoration: BoxDecoration(
                                                  color:  Colors.white,borderRadius:BorderRadius.circular(5)
                                              ),height: 6.h,),flex: 1,),
                                            SizedBox(width: 3.w,),

                                            Expanded(child: Container(
                                              child:MaterialButton(
                                                onPressed: (){},

                                                child: Center(
                                                  child: Text("جزئیات دوره",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.white),borderRadius:BorderRadius.circular(5)
                                              ),height: 6.h,),flex: 1,),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          alignment: Alignment.bottomCenter,

                        ),
                        Align(
                          alignment: Alignment.topCenter,

                          child: Container(
                            width: 20.w,
                            height: 3.h,
                            decoration: BoxDecoration(
                                color: "003545".toColor(),
                                borderRadius: BorderRadius.circular(5000)
                            ),
                            child: Center(
                              child: Text(
                                "دوره فعال",
                                style: TextStyle(color: Colors.white,fontSize: 9.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              options: CarouselOptions(),
            ),
          ),

          SizedBox(height: 1.h,),
          Image.asset("assets/images/home/home_4.png",width: 20.w,),
          Container(
            width: 100.w,
            margin: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    height: 14.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 20

                          )
                        ]
                    ),
                    padding: EdgeInsets.all(3.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("هدف امروز",style: TextStyle(fontWeight: FontWeight.w900,color:
                            "245D72".toColor()),),
                            Image.asset("assets/images/home/home_5.png")
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("۱۶ از  ۲۰ دقیقه",style: TextStyle(fontWeight: FontWeight.w100,color:
                            "003545".toColor()),),

                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("زمان صرف‌شده آموزش",style: TextStyle(fontWeight: FontWeight.w500,color:
                            "003545".toColor()),),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 3.w,),
                Expanded(
                  flex:1,
                  child: Container(
                    height: 14.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 20

                          )
                        ]
                    ),
                    padding: EdgeInsets.all(3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("عملکرد شما",style: TextStyle(fontWeight: FontWeight.w900,color:
                            "245D72".toColor(),fontSize: 14.sp),),
                          ],
                        ),
                        Image.asset("assets/images/home/home_6.png")

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text("دوره های جدید و جذاب",style: TextStyle(fontWeight: FontWeight.w900,color:
              "164A5D".toColor(),fontSize: 14.sp),),
            ),
          ),
          Container(
            width: 100.w,

            margin: EdgeInsets.all(16),
            height: 25.h,
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
            child: Column(
              children: [
                Container(
                  height: 10.h,
                  child: Stack(
                    children: [
                      Container(
                        width: 100.w,
                        height: 7.h,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset("assets/images/home/home_7.png",fit: BoxFit.cover,)),
                      ),Container(
                        width: 100.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 6.h,
                          height: 6.h,
                          decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage("assets/images/home/home_8.png"))
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child:   Container(
                            width: 12.w,
                            margin: EdgeInsets.all(2.w),
                            height: 7.w,
                            decoration: BoxDecoration(
                                color:
                                Colors.black.withOpacity(0.25),
                                borderRadius:
                                BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/images/home/home_9.png",
                                  height: 2.h,
                                ),
                                Text(
                                  "A2",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          )),
                      Align(
                          alignment: Alignment.topLeft,
                          child:   Container(
                            width: 12.w,
                            margin: EdgeInsets.all(2.w),
                            height: 7.w,
                            decoration: BoxDecoration(
                                color:
                                Colors.black.withOpacity(0.25),
                                borderRadius:
                                BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.star,color: AppColor.praimaryColor,),
                                Text(
                                  "4.5",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 1.w,)
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("آموزش زبان روسی - سطح A2",style: TextStyle(fontWeight: FontWeight.w900,color:
                    "164A5D".toColor(),fontSize: 14.sp),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("مدرس :",style: TextStyle(fontWeight: FontWeight.w200,color:
                      "164A5D".toColor(),fontSize: 10.sp),),
                    ),
                    Container(
                      child: Text("علی نقوی",style: TextStyle(fontWeight: FontWeight.w900,color:
                      "164A5D".toColor(),fontSize: 10.sp),),
                    ),

                  ],
                ),
                Container(
                  width: 100.w,
                  height: 1,
                  color: Colors.black.withOpacity(0.05),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/images/home/home_10.png",height: (1.5).h,),
                          SizedBox(width: 2.w,),
                          Text("۲۳ ساعت آموزش",style: TextStyle(
                              fontWeight: FontWeight.w100,color: "5C94AB".toColor()
                          ),)
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/images/home/home_11.png",height: (1.5).h,),
                          SizedBox(width: 2.w,),
                          Text("۱,۲۰۰,۰۰۰ تومان ",style: TextStyle(
                              fontWeight: FontWeight.w100,color: "5C94AB".toColor(),decoration: TextDecoration.lineThrough
                          ),),
                          Text("رایگان!",style: TextStyle(
                            fontWeight: FontWeight.w500,fontSize: 14.sp,color: "00CE4E".toColor(),

                          ),),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
