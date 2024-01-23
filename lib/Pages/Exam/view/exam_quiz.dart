import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExamQuizPage extends StatefulWidget {
  const ExamQuizPage({super.key});

  @override
  State<ExamQuizPage> createState() => _ExamQuizPageState();
}

class _ExamQuizPageState extends State<ExamQuizPage> {
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
          "Exam-Quiz",
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
          ),
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

Padding(
  padding: const EdgeInsets.all(8.0),
  child: Card(
    elevation: 5,
    color: Colors.white,
    child: ListTile(
      
      title: Text(
                          '1994',
                          style: GoogleFonts.publicSans(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        ),
                  trailing: Radio(value: true, groupValue: "groupValue", onChanged: (value){
    
                  }),
    ),
  ),
),

              SizedBox(height: 40.w,),

         UnconstrainedBox(
           child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 120.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff491EB8), Color(0xff844FFC)]),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Text(
                      'Next',
                      style: GoogleFonts.publicSans(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
         ),
        ],
      ),
    ));
  }
}
