import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniqueschool2024/widgets/app_bar.dart';

class AllExamPage extends StatefulWidget {
  const AllExamPage({super.key});

  @override
  State<AllExamPage> createState() => _AllExamPageState();
}

class _AllExamPageState extends State<AllExamPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar("Exam", (){

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
          
        
      
            
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
      ]),
    ));
  }
}
