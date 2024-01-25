import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/QuizExam/view/all_exam_page.dart';
import 'package:uniqueschool2024/school/team_page.dart';



class CategoriesPage extends StatelessWidget {
        

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [

  Container(
    width: 300.w,
  margin: EdgeInsets.all(10),
    child: Row(
      children: [
        Container(
           width: 240.w,
           height: 40.h,
          child: TextFormField(
             decoration: new InputDecoration.collapsed(
    hintText: 'Username'
  ),
            // decoration:InputDecoration(
            // border: InputBorder.none,
            // )
            
          ),
        ),
        Container(
          height: 40.h, width: 40.w, 
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Color(0xff0961F5),
            borderRadius: BorderRadius.circular(12.r)
          ),
          child: Image.asset("assets/search1.png", color: Colors.white,fit: BoxFit.fitHeight,),
        )
      ],
    ),
  ),  

   SizedBox(height: 25.h,),
    const   Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GridItem(imageUrl: "assets/ssc.png", text: 'SSC'),
             GridItem(imageUrl: "assets/category/hsc.png", text: 'HSC'),
          ],
        ),
        SizedBox(height: 15.h,),
       
       const     Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GridItem(imageUrl: "assets/category/honors.png", text: 'Honors'),
             GridItem(imageUrl: 'assets/category/admission.png',text: "Admission"),
          ],
        ),
         SizedBox(height: 15.h,),
          InkWell(
            onTap: (){
            Get.to(AllExamPage());
            },
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(imageUrl: "assets/category/job.png", text: 'Job'),
               GridItem(imageUrl: 'assets/exam.png',text: "Exam"),
            ],
                    ),
          ),
         SizedBox(height: 15.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        const    GridItem(imageUrl: "assets/category/tutor.png", text: 'Tutor'),
             InkWell(
              onTap: (){
Get.to(TeamPage());
              },
              child: GridItem(imageUrl: 'assets/category/team.png', text:'Team' )),
          ],
        ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  const GridItem({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      width: 120.w,
      decoration: BoxDecoration(
      
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              imageUrl,
              height: 50.h, // Set the desired height for the image
              width: 50.w, // Take the full width available
              fit: BoxFit.cover, // Adjust how the image fits into the container
            ),
            // Text under the image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: GoogleFonts.publicSans(fontSize: 16.sp),
              ),
            ),
          ],
        ),
    );
    
  }
}
