import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uniqueschool2024/Pages/course/model/course_lecture_note_model.dart';
import 'package:uniqueschool2024/Pages/course/view/buy_course_list_view.dart';

import 'package:uniqueschool2024/school/app_bar_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CourseDetailsView extends StatefulWidget {
  final data;

  CourseDetailsView({this.data});
  @override
  State<CourseDetailsView> createState() => _CourseDetailsViewState();
}

class _CourseDetailsViewState extends State<CourseDetailsView> {
  late YoutubePlayerController ytController;

  CourseLectureNoteModel? courseLectureNoteModel;

  void initState() {
    super.initState();
    String videoId;
    videoId = YoutubePlayer.convertUrlToId("${widget.data.videoUrl}")!;
    print(videoId);
    ytController = YoutubePlayerController(initialVideoId: videoId,
    flags: YoutubePlayerFlags(
      autoPlay: false 
    )
    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: customAppBar("Lecture View", () {
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
                        width: double.infinity.w,
                        height: 150.h,
                        color: Colors.teal,
                        // child: ClipRRect(
                        //   borderRadius: BorderRadius.circular(10.r),
                        //   child: YoutubePlayer(
                        //     controller: ytController,
                           
                        //   ),
                        // ),
                        ),
                        SizedBox(height: 10.h,), 
                        Row(
                          children: [
                            Container(
                              child: Text("${widget.data.title}"),
                            ) 
                          ],
                        )
                  ],
                ))));
  }
}
