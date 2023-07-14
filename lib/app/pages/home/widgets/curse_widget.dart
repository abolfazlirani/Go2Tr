import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../common/app_color.dart';

class CurseWidget extends StatefulWidget {
  const CurseWidget({Key? key}) : super(key: key);

  @override
  State<CurseWidget> createState() => _CurseWidgetState();
}

class _CurseWidgetState extends State<CurseWidget> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: "F9FAFB".toColor(),

        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/images/curse/curse_11.png",color: Colors.red,),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
            padding: EdgeInsets.all(16),
                    child: Column(
                      children: [

                        SizedBox(height: 5.h,),


                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("assets/images/curse/curse_1.svg"),
                                    SizedBox(width: 3.w,),
                                    Expanded(child: TextField(decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "جستجوی دوره ها",
                                      hintStyle: TextStyle(
                                        color: "808080".toColor()
                                      )
                                    ),))
                                  ],
                                ),
                                width: 70.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: "EFEFEF".toColor())
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Expanded(child: Container(decoration: BoxDecoration(
                                color: AppColor.praimaryColor,borderRadius: BorderRadius.circular(5)
                              ),height: 5.h,child: MaterialButton(
                                onPressed: (){},
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/images/curse/curse_2.svg"),
                                    SizedBox(width: 2.w,),
                                    Text("فیلتر",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),))
                            ],
                          ),
                        ),
                        SizedBox(height: 3.h,),
                        Container(
                          height: 25.h,
                          child: Row(
                            children: [
                              Expanded(child: Container(
                                child: Stack(
                                  children: [
                                    SizedBox.expand(child: Image.asset("assets/images/curse/curse_9.png",
                                    fit: BoxFit.fill,),),
                                    SizedBox.expand(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(vertical: 3.h,horizontal: 7.w),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Image.asset("assets/images/curse/curse_5.png",height: 8.h,),

                                            Text("انگلیسی",style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: "003545".toColor(),
                                              fontSize: 14.sp
                                            ),),
                                            SizedBox(height: 1.h,),

                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/images/curse/curse_3.svg",height: 15,),
                                                SizedBox(width: 2.w,),
                                                Text("۶۴۲",style: TextStyle(fontWeight: FontWeight.w900,color: "003545".toColor()),),
                                                SizedBox(width: 1.w,),

                                                Text("زبان آموز",style: TextStyle(fontWeight: FontWeight.w200,color: "003545".toColor()),)
                                              ],
                                            ),
                                            SizedBox(height: 1.h,),
                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/images/curse/curse_4.svg",height: 15,),
                                                SizedBox(width: 2.w,),
                                                Text("۴",style: TextStyle(fontWeight: FontWeight.w900,color: "003545".toColor()),),
                                                SizedBox(width: 1.w,),

                                                Text("دوره آموزشی",style: TextStyle(fontWeight: FontWeight.w200,color: "003545".toColor()),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),flex: 1,),
                              SizedBox(width: 3.w,),
                              Expanded(child: Container(
                                child: Stack(
                                  children: [
                                    SizedBox.expand(child: Image.asset("assets/images/curse/curse_9.png",
                                      fit: BoxFit.fill,),),
                                    SizedBox.expand(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(vertical: 3.h,horizontal: 7.w),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Image.asset("assets/images/curse/curse_6.png",height: 8.h,),

                                            Text("فرانسوی",style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                color: "003545".toColor(),
                                                fontSize: 14.sp
                                            ),),
                                            SizedBox(height: 1.h,),

                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/images/curse/curse_3.svg",height: 15,),
                                                SizedBox(width: 2.w,),
                                                Text("۶۴۲",style: TextStyle(fontWeight: FontWeight.w900,color: "003545".toColor()),),
                                                SizedBox(width: 1.w,),

                                                Text("زبان آموز",style: TextStyle(fontWeight: FontWeight.w200,color: "003545".toColor()),)
                                              ],
                                            ),
                                            SizedBox(height: 1.h,),
                                            Row(
                                              children: [
                                                SvgPicture.asset("assets/images/curse/curse_4.svg",height: 15,),
                                                SizedBox(width: 2.w,),
                                                Text("۴",style: TextStyle(fontWeight: FontWeight.w900,color: "003545".toColor()),),
                                                SizedBox(width: 1.w,),

                                                Text("دوره آموزشی",style: TextStyle(fontWeight: FontWeight.w200,color: "003545".toColor()),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),flex: 1,),
                            ],
                          ),
                        ),
                        Container(
                          width: 100.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 20

                                )
                              ]
                          ),
                          child: Image.asset("assets/images/curse/curse_10.png",fit: BoxFit.fitWidth,),

                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 4.h,bottom: 2.h),
                            child: Text("جدیدترین دوره‌ها",style: TextStyle(fontWeight: FontWeight.w900,color:
                            "164A5D".toColor(),fontSize: 14.sp),),
                          ),
                        ),



                      ],
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 29.h,
                    child:
                    CarouselSlider.builder(
                      itemCount:4,

                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                          Container(
                            height: 29.h,
                            child: PageView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 100.w,

                                  margin: EdgeInsets.all(8),
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
                          ),
                      options: CarouselOptions(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 4.h,bottom: 2.h,left: 16,right: 16),
                      child: Text("دوره های محبوب",style: TextStyle(fontWeight: FontWeight.w900,color:
                      "164A5D".toColor(),fontSize: 14.sp),),
                    ),
                  ),

                  Container(
                    width: 100.w,
                    height: 29.h,
                    child:
                    CarouselSlider.builder(
                      itemCount:4,

                      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                          Container(
                            height: 29.h,
                            child: PageView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 100.w,

                                  margin: EdgeInsets.all(8),
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
                          ),
                      options: CarouselOptions(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
