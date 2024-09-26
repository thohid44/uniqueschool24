 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


AppBar customAppBar(title, Null Function() param1) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          )),
      centerTitle: true,
      title: Text(
        "$title",
        style: GoogleFonts.inter(color: Colors.black, 
        letterSpacing: 1,
        
        ),
      ),
      actions: [
      
        IconButton(
            onPressed: () {
           
            },
            icon: Image.asset(
              "assets/taka.png",
              height: 15.h,
              fit: BoxFit.fitHeight,
            )),
      ],
    );
  }
