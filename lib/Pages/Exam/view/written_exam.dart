import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/QuizExam/view/exam_start_page.dart';
import 'package:uniqueschool2024/widgets/app_bar.dart';

class WrittenExamPage extends StatefulWidget {
  const WrittenExamPage({super.key});

  @override
  State<WrittenExamPage> createState() => _WrittenExamPageState();
}

class _WrittenExamPageState extends State<WrittenExamPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar("Written Exam", (){

      }),
      body: ListView(
        children: [
       
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: 300.w, 
              height: 90.h, 
              decoration: BoxDecoration(
                gradient:const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                       Color(0xffEE709D),
                  Color(0xffEC8870),
                
                  ],
                ),
                borderRadius: BorderRadius.circular(10.r), // Adjust the border radius as needed
              ),
              child: Center(
                child: Text(
                  'Your Content Goes Here',
                  style: TextStyle(
                    color: Colors.white, // Adjust the text color as needed
                    fontSize: 16.0, // Adjust the font size as needed
                  ),
                ),
              ),
            ),
          
        
        Container(
          height: 400.h,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (index,context){
            return    Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
             padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: 300.w, 
              height: 90.h, 
              decoration: BoxDecoration(
                gradient:const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                        Color(0xff4F78EE),
                       Color(0xff11B1FB),
              
                
                  ],
                ),
                borderRadius: BorderRadius.circular(10.r), // Adjust the border radius as needed
              ),
              child: InkWell(
                onTap: (){
                  Get.to(ExamStartPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                    'Test Name',
                    style: GoogleFonts.publicSans(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      fontWeight: FontWeight.w700
                    ),
                  ),
                    Text(
                    '11:00 AM',
                    style: GoogleFonts.publicSans(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      fontWeight: FontWeight.w700
                    ),
                  ),
                    Text(
                    '500 /=Tk',
                    style: GoogleFonts.publicSans(
                      color: Colors.white, 
                      fontSize: 14.0, 
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  ],
                ),
              )
            );
          }),
        )
      
            
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
      ]),
    ));
  }
}
