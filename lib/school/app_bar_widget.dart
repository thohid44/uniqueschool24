 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


AppBar customAppBar(title) {
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
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.amber,
            )),
        IconButton(
            onPressed: () {
           
            },
            icon: Image.asset(
              "assets/menu_bar.jpeg",
              height: 15.h,
              fit: BoxFit.fitHeight,
            )),
      ],
    );
  }
