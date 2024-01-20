import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/nav_page/more_setting_page.dart';
import 'package:uniqueschool2024/Pages/profile/profile_page.dart';
import 'package:uniqueschool2024/Util/color.dart';

import 'school/categories_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/logo.png"),
        ),
      

actions: [
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("Md. Hosen Zisad",style: GoogleFonts.publicSans( 
     fontSize: 13.sp,
            fontWeight: FontWeight.w600
     , color: Colors.black        ),),
   ),
 
  InkWell(
    onTap: (){
      Get.to(ProfilePage());
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset("assets/u.png"),
    ),
  )
],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    'CATEGORIES',
                    style: GoogleFonts.roboto(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                  InkWell(
                    onTap: (){
                             Get.to(CategoriesPage());
                    },
                    child: Container(
                    child: Text(
                      'See All',
                      style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                                    ),
                  ),
              ],
            ),
          ),
          Container(
              height: 100.h,
              width: 140,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10.h),
                      padding: EdgeInsets.all(5.h),
                      height: 70.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: InkWell(
                        onTap: () {
                          //    Get.to();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("assets/ssc.png"),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "SSC",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
      bottomNavigationBar: Container(
        height: 80.h, 
        margin: EdgeInsets.only(left: 3.w,right: 3.w, bottom: 3.h),
        decoration: BoxDecoration(
          color: Color(0xff614AD3).withOpacity(0.1), 
          borderRadius: BorderRadius.circular(40.r)
        ),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ Image.asset("assets/n2.png"),
          Image.asset("assets/n2.png"),Image.asset("assets/n3.png"),Image.asset("assets/n4.png"),

          InkWell(
            onTap: (){
              Get.to(MoreSettingPage());
            },
            child: Image.asset("assets/n5.png"))],
        ),
        
      ),
    ));
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: Container(
                width: 75,
                height: 82,
                decoration: BoxDecoration(
                  color: Color(0xffD8C9FE),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 30,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'SSC',
                      style: GoogleFonts.publicSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200.h,
              width: 180.w,
              decoration: BoxDecoration(
                  color: Color(0xffD8E54F),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(9.r),
                      bottomLeft: Radius.circular(26.r),
                      bottomRight: Radius.circular(26.r))),
              child: Column(
                children: [
                  Container(
                    width: 175.w,
                    height: 30.h,
                    alignment: Alignment.center,
                    child: Text(
                      "English",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 70.h,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Stack(
                      children: [
                        Container(
                          height: 70.h,
                          child: Image.asset(
                            "assets/p.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                            left: 20.h,
                            top: 10.h,
                            child: Container(
                              width: 180.w,
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 78.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: 25.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xffE69EFF),
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                            child: Icon(
                                              Icons.percent,
                                              size: 15.h,
                                            )),
                                        Container(
                                          padding: EdgeInsets.only(right: 5.w),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Group Study",
                                            style: TextStyle(
                                                fontSize: 8.sp,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 78.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: 25.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xffE69EFF),
                                                borderRadius:
                                                    BorderRadius.circular(5.r)),
                                            child: Icon(
                                              Icons.percent,
                                              size: 15.h,
                                            )),
                                        Container(
                                          padding: EdgeInsets.only(right: 5.w),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Group Study",
                                            style: TextStyle(
                                                fontSize: 8.sp,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
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
