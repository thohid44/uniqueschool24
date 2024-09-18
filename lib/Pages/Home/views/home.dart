import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/Home/controller/class_list_controller.dart';
import 'package:uniqueschool2024/Pages/Home/views/left_drawer.dart';
import 'package:uniqueschool2024/Pages/nav_page/more_setting_page.dart';
import 'package:uniqueschool2024/Pages/profile/profile_page.dart';
import 'package:uniqueschool2024/Util/color.dart';

import '../../../school/categories_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var classController = Get.put(ClassListController());

  @override
  Widget build(BuildContext context) {
    classController.getClassList();
    return SafeArea(
    
        child: Scaffold(
          
      appBar: AppBar(
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Image.asset("assets/logo.png"),
        // ),
        
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Md. Hosen Zisad",
              style: GoogleFonts.publicSans(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(ProfilePage());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/u.png"),
            ),
          )
        ],
      ),
       drawer:CustomDrawer(), 
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 200.h,
            width: 300.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/home_bg.png"), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100.h,
                      width: 150.w,
                    ),
                    Container(
                      height: 100.h,
                      width: 150.w,
                      alignment: Alignment.center,
                      child: Text("Start Learning",
                          style: GoogleFonts.inter(
                              fontSize: 30.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(3.h),
                        hintText: "Search Courses here ",
                        hintStyle: GoogleFonts.inter(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              ],
            ),
          ),
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
                  onTap: () {
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
              child: Obx(() => classController.isLoading.value ==false?ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: classController.classList.length,
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
                              child: Image.asset(
                                "assets/ssc.png",
                                width: 35.w,
                                height: 35.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "${classController.classList[index].name}",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  }):Center(child: CircularProgressIndicator(),))
                  
                  ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: 300.w,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff537EC4),
                    Color(0xffD8C9FE),
                  ],
                ),
                borderRadius: BorderRadius.circular(
                    10.r), // Adjust the border radius as needed
              ),
              child: Row(
                children: [
                  Container(
                    width: 250.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/scholarship.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Join as a Tutor & Hire Tutor',
                              style: GoogleFonts.publicSans(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Easily create and share \nyour own awesome portfolio',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 120.w,
                                height: 35.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xffDB3A3C),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Text(
                                  'Apply as Tutor',
                                  style: GoogleFonts.publicSans(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 100.w,
                                height: 35.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xff614AD3),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Text(
                                  'Hire Tutor',
                                  style: GoogleFonts.publicSans(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(width: 50.w, child: Image.asset("assets/girl.png"))
                ],
              )),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 100.w,
            alignment: Alignment.center,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
            child: Text(
              'Popular Instructor',
              style: GoogleFonts.publicSans(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 145.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return UnconstrainedBox(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      width: 140.w,
                      height: 143.h,
                      decoration: BoxDecoration(
                          color: Color(0xffD8C9FE),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/u.png"),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Hossain Zisad',
                              style: GoogleFonts.publicSans(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'English',
                              style: GoogleFonts.publicSans(
                                  color: Colors.black,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  '1500',
                                  style: GoogleFonts.publicSans(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                      const    Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_outline,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_outline,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_outline,
                                color: Colors.yellow,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.w),
            alignment: Alignment.centerLeft,
            child: Text(
              'Meet Our Team',
              style: GoogleFonts.publicSans(
                  color: Color(0xff364356),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 145.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return UnconstrainedBox(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      width: 140.w,
                      height: 143.h,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100.w,
                              width: 90.w,
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                  color: Color(0xffD8C9FE),
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: Image.asset(
                                "assets/user.jpg",
                                height: 50.w,
                                width: 50.w,
                                fit: BoxFit.contain,
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Hossain Zisad',
                              style: GoogleFonts.exo(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'CEO & Instructor',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80.h,
        margin: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 3.h),
        decoration: BoxDecoration(
            color: Color(0xff614AD3).withOpacity(0.1),
            borderRadius: BorderRadius.circular(40.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/n2.png"),
            Image.asset("assets/n2.png"),
            Image.asset("assets/n3.png"),
            Image.asset("assets/n4.png"),
            InkWell(
                onTap: () {
                  Get.to(MoreSettingPage());
                },
                child: Image.asset("assets/n5.png"))
          ],
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
