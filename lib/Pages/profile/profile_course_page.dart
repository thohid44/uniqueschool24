import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/profile/profile_page.dart';
import 'package:uniqueschool2024/widgets/app_bar.dart';

class ProfileCoursePage extends StatefulWidget {
  const ProfileCoursePage({super.key});

  @override
  State<ProfileCoursePage> createState() => _ProfileCoursePageState();
}

class _ProfileCoursePageState extends State<ProfileCoursePage> {
  List<String> coursList = ["All", "Science", "Business Studies"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar("Courses", () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      }),
      body: ListView(
        children: [
          Container(
            height: 40.h,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListView.builder(
                itemCount: coursList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                      height: 40.h,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      margin: EdgeInsets.all(5.w),
                      decoration: BoxDecoration(
                          color: Color(0xff167f71),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Text("${coursList[index]}",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700)));
                }),
          ),
          Container(
            height: 200.h,
            margin: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r),
              ),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffc3e6f9), Colors.white]),
            ),
            child: ListView(
              children: [
                Container(
                    height: 110.h,
                    margin: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(
                    
                     
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.black,
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r),
                             bottomLeft: Radius.circular(15.r))
                          ),
                          child: Text("Video",style: GoogleFonts.publicSans(),),
                        ),
                        Container(
                         height: 100.h,
                          width: 200.w,
                              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(15.r),
                             bottomRight: Radius.circular(15.r))
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [ 
                                Text("Science",style: GoogleFonts.publicSans(),),
                              Image.asset("assets/flag.png"),
                              ],
                            ),

                              Container(
                              
                                child: Text("Class 9 - Chemistry",style: GoogleFonts.publicSans(),
                                textAlign: TextAlign.left,),
                              ),
                               Container(
                              
                                child: Text("7056/-",style: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w700
                                ),
                                textAlign: TextAlign.left,),
                              ),

                               Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [ 
                                Icon(Icons.star, color: Colors.yellow,),
                                Text(".3",style: GoogleFonts.publicSans(),),
                                  Text("|",style: GoogleFonts.publicSans(
                                    fontWeight: FontWeight.w900
                                  ),),
                                Text("12000",style: GoogleFonts.publicSans(
                                    fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),
                            ],
                          )
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
