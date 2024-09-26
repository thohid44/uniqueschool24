import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/course/model/course_lecture_note_model.dart';

import 'package:uniqueschool2024/Pages/course/view/buy_course_list_view.dart';
import 'package:uniqueschool2024/Util/Localstorekey.dart';
import 'package:uniqueschool2024/Util/app_constant.dart';
import 'package:http/http.dart' as http;
import 'package:uniqueschool2024/school/app_bar_widget.dart';

class OrderedCourseLec extends StatefulWidget {
  @override
  State<OrderedCourseLec> createState() => _OrderedCourseLecState();
}

class _OrderedCourseLecState extends State<OrderedCourseLec> {
  var _box = GetStorage();

  bool isLoading = false;
 CourseLectureNoteModel? courseLectureNoteModel;
  getCourseOrderLac() async {
    var token = _box.read(LocalStoreKey.token);
    try {
      var mapData = {"course_id": '4'};
      isLoading = true;
      var response = await http.post(
          Uri.parse(
              "${AppConstants.baseUrl}${AppConstants.courseOrderlecture}"),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + token,
          },
          body: mapData);
      print("response ${response}");
      print(response.statusCode);
      var jsonData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(jsonData);
 courseLectureNoteModel = CourseLectureNoteModel.fromJson(jsonData);
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print("Error: $e");
    }
  }

  void initState() {
    super.initState();
    getCourseOrderLac();
  }

  @override
  Widget build(BuildContext context) {
     
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar("Courses", () {
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
          child: isLoading==false?ListView.builder(
                  itemCount:  courseLectureNoteModel!.data.course.lecture!.length,
                  itemBuilder: (context, index) {
                    var data = 
                        courseLectureNoteModel!.data.course.lecture![index];
                    return Container(
                      
                        margin: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(),
                        child: InkWell(
                          onTap: () {
                          
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.r),
                                        bottomLeft: Radius.circular(15.r))),
                                child: Text(
                                  "Video",
                                  style: GoogleFonts.publicSans(),
                                ),
                              ),
                              Container(
                                 
                                  width: 200.w,
                                  padding: EdgeInsets.only(
                                      left: 10.w, right: 10.w, top: 10.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.r),
                                          bottomRight: Radius.circular(15.r))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${data.title}",
                                            style: GoogleFonts.publicSans(),
                                          ),
                                          Image.asset("assets/flag.png"),
                                        ],
                                      ),
                                      Container(
                                        child: Text(
                                        "${data.paper}",
                                          style: GoogleFonts.publicSans(),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "${data.chapter}",
                                          style: GoogleFonts.publicSans(
                                              fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Icon(
                                      //       Icons.star,
                                      //       color: Colors.yellow,
                                      //     ),
                                      //     Text(
                                      //       ".3",
                                      //       style: GoogleFonts.publicSans(),
                                      //     ),
                                      //     Text(
                                      //       "|",
                                      //       style: GoogleFonts.publicSans(
                                      //           fontWeight: FontWeight.w900),
                                      //     ),
                                      //     Text(
                                      //       "12000",
                                      //       style: GoogleFonts.publicSans(
                                      //           fontWeight: FontWeight.bold),
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  )),
                            ],
                          ),
                        ));
                  }) :Center(child: CircularProgressIndicator(),)
      )
    ));
  }
}
