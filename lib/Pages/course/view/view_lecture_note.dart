import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/course/view/buy_course_list_view.dart';
import 'package:uniqueschool2024/school/app_bar_widget.dart';

class ViewLectureNote extends StatefulWidget {
  final note;
  ViewLectureNote({super.key , this.note});

  @override
  State<ViewLectureNote> createState() => _ViewLectureNoteState();
}

class _ViewLectureNoteState extends State<ViewLectureNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: customAppBar("Lecture Note", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BuyCourseListView()));
            }),
            body: Container(
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
                    padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w,  ),
                          child: Text("ভারতের ত্রিপুরা রাজ্যের মুখ্যমন্ত্রী হাসিনার দেবর মানিক সাহা বলেছে, ভারত ছাড়া বাংলাদেশের পরিস্থিতি উন্নত হবে না। বাংলাদেশ যেভাবে চলছে, সেভাবে চলতে পারে না।", 
                          style: GoogleFonts.publicSans(fontSize: 12.sp, 
                          
                          ),),
                        )
                  ],
                ))));
  }
}
