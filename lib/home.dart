import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(), 
      body: ListView(
        children: [

          Container(
            width: 140,
            child: Column(
              children: [
                Container(
                  height: 120,
                     width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xffD8C9FE)
                  ),
                  child: Column(
                    children: [
                      Text("English", 
                      textAlign: TextAlign.center,),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )); 
  }
}




class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: Container(
                width: 75,
                height: 82,
                decoration: BoxDecoration(
                  color: Color(0xffD8C9FE),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 30,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'SSC',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 200.h,
                width: 180.w,

                decoration: BoxDecoration(
                    color: Color(0xffD8E54F),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(9.r),
                        bottomLeft: Radius.circular(26.r),
                        bottomRight: Radius.circular(26.r))),
                child: Column(
                  children: [
                    Container(
                      width: 175.w,
                      height: 30.h,
                      alignment: Alignment.center,
                      child: Text(
                        "English",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),

                      Container(
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Stack(
                        children: [ 
                          Container(
                          
                            height: 70.h,
                     
                            child: Image.asset("assets/p.png", fit: BoxFit.contain,),
                          ),

                          Positioned(
                            left: 20.h, 
                            top: 10.h,
                            child:  Container(
                      width: 180.w,
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      decoration: BoxDecoration(
                     
                      ),

                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                        Container(
                            width: 78.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 25.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE69EFF),
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Icon(
                                      Icons.percent,
                                      size: 15.h,
                                    )),
                                Container(
                                  padding: EdgeInsets.only(right: 5.w),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Group Study",
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                           Container(
                            width: 78.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 25.w,
                                    height: 30.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xffE69EFF),
                                        borderRadius:
                                            BorderRadius.circular(5.r)),
                                    child: Icon(
                                      Icons.percent,
                                      size: 15.h,
                                    )),
                                Container(
                                  padding: EdgeInsets.only(right: 5.w),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Group Study",
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )) , 
                        ],

                      ),


                    ),
                   
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}