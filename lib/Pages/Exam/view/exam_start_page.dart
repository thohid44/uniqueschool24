import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/Exam/view/exam_quiz.dart';

class ExamStartPage extends StatefulWidget {
  const ExamStartPage({super.key});

  @override
  State<ExamStartPage> createState() => _ExamStartPageState();
}

class _ExamStartPageState extends State<ExamStartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: Text(
          "Start Exam",
          style: GoogleFonts.publicSans(
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(10.w),
              child: Image.asset("assets/exam_banner.png")),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Start Quiz Now!",
              style: GoogleFonts.publicSans(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
             SizedBox(height: 40.w,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: () {
                  Get.to(ExamQuizPage());
                },
                child: Container(
                  width: 100.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff491EB8), Color(0xff844FFC)]),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Text(
                    'Start',
                    style: GoogleFonts.publicSans(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(width: 10.w,),

                 InkWell(
                onTap: () {},
                child: Container(
                  width: 100.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff432634), Color(0xffF80000)]),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.publicSans(
                        color: Colors.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
