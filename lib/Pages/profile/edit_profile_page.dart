import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/profile/profile_page.dart';
import 'package:uniqueschool2024/widgets/app_bar.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar("Edit/Profile", () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProfilePage()));
      }),
      body: ListView(
        children: [
          Container(
            height: 400.h,
            decoration: BoxDecoration(color: Colors.amber),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 300.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(9.w),
                        label: Text(
                          "Full Name",
                          style: GoogleFonts.publicSans(fontSize: 12.sp),
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        focusColor: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
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
