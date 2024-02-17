import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/Home/views/home.dart';

class LoginSuccessPage extends StatefulWidget {
  const LoginSuccessPage({super.key});

  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffc3e6f9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350.h,
            margin: EdgeInsets.symmetric(horizontal: 26.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(35.r)),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 130.h,
                  child: Image.asset("assets/ss.png"),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Congratulations",
                    style: GoogleFonts.publicSans(
                        fontSize: 21.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 250.w,
                  alignment: Alignment.center,
                  child: Text(
                    "Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.",
                    style: GoogleFonts.publicSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
