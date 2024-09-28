import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:uniqueschool2024/Pages/course/view/buy_course_list_view.dart';
import 'package:uniqueschool2024/school/app_bar_widget.dart';

class ViewLecturePdfNote extends StatefulWidget {
  final pdfNote;
  ViewLecturePdfNote({super.key , this.pdfNote});

  @override
  State<ViewLecturePdfNote> createState() => _ViewLecturePdfNoteState();
}

class _ViewLecturePdfNoteState extends State<ViewLecturePdfNote> {
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
                          child:SfPdfViewer.network(
              'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf')
                        )
                  ],
                ))));
  }
}
