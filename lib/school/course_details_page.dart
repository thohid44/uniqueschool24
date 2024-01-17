import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_bar_widget.dart';

class CourseOverViewPage extends StatefulWidget {
  const CourseOverViewPage({super.key});

  @override
  State<CourseOverViewPage> createState() => _CourseOverViewPageState();
}

class _CourseOverViewPageState extends State<CourseOverViewPage> {
  @override
  Widget build(BuildContext context) {
return   SafeArea(
      child: Scaffold(
        appBar: customAppBar("Team"),
        body: ListView(
          children: [
            Container(
              height: 200.h,
              margin: EdgeInsets.all(15.w),
              decoration:BoxDecoration(
                color: Colors.teal
              )
            ),


 Container(
  alignment: Alignment.center,
              child: Text("English Crash Course - HSC25",style: GoogleFonts.publicSans(
                fontSize:16.sp, 
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),),
            ),

Padding(
  padding:  EdgeInsets.symmetric(horizontal: 15.w),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       Container(
        width: 120.w,
                child: Row(
                  children: [
                    Image.asset("assets/taka.png",width: 15.w,
                      fit: BoxFit.fitWidth,),
                      SizedBox(  width:10.h,),

                   Container(
                     child: Text("5000",style: GoogleFonts.publicSans(
                          fontSize:16.sp, 
                          color: Colors.green,
                          fontWeight: FontWeight.w600
                        ),
                        textAlign: TextAlign.start,
                        ),
                   ),
                  ],
                ),
              ),
         Container(
                child: ElevatedButton(onPressed: (){
  
                }, child:  Text("BUY",style: GoogleFonts.publicSans(
                  fontSize:14.sp, 
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),),)
              ),
    ],
  ),
),

SizedBox(  height:25.h,)
,
UnconstrainedBox(
  child: Container(
    width: 200.w,
       height: 45.h,
       alignment: Alignment.center,
        decoration:BoxDecoration(
          color:Color(0xffE8F1FF)
        ),
                child: Text("Details",style: GoogleFonts.publicSans(
                    fontSize:14.sp, 
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),),
              ),
),

  Container(
    margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
                     child: Text("Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiit",style: GoogleFonts.publicSans(
                          fontSize:12.sp, 
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                        ),
                        textAlign: TextAlign.start,
                        ),
                   ),

                   SizedBox(height: 10.h,),

                       SizedBox(height: 10.h,),
                         UnconstrainedBox(
                           child: Container(
                            height: 100.w,
                            width: 280.w,
                            decoration: BoxDecoration(
                              color: Colors.grey[150]
                            ),
                                                child: Text("Instructor",style: GoogleFonts.roboto(
                            fontSize:14.sp, 
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                                                   ),
                                                   textAlign: TextAlign.start,
                                                   ),
                                              ),
                         ),


                     Container(
         margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Image.asset("assets/taka.png",width: 15.w,
                      fit: BoxFit.fitWidth,),
                      SizedBox(  width:10.h,),

                   Container(
                     child: Text("Get 16 lessons in 3 hours",style: GoogleFonts.roboto(
                          fontSize:14.sp, 
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                        textAlign: TextAlign.start,
                        ),
                   ),
                  ],
                ),
              ),
          ],
        )
      ),
    );
  }
}
