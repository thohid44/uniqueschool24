import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/profile/edit_profile_page.dart';
import 'package:uniqueschool2024/Pages/profile/profile_course_page.dart';
import 'package:uniqueschool2024/widgets/app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar("Profile", (){

      }),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(90.r)),
                child: Image.asset("assets/user.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.w),
                child: Text(
                  'Faisal Kabir',
                  style: GoogleFonts.publicSans(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 460.h,
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            padding: EdgeInsets.only(top: 35.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r))),
            child: Column(
              children: [
                ProfileItem(
                  title: "Edit Profile",
                  img: "assets/c_icon.png",
                  onTab: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfilePage()));
                  },
                ),
                ProfileItem(
                  title: "Course",
                  img: "assets/c2.png",
                  onTab: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileCoursePage()));
                  },
                ),
                ProfileItem(
                  title: "Payment",
                  img: "assets/c3.png",
                  onTab: () {},
                ),
                ProfileItem(
                  title: "Privacy Policy",
                  img: "assets/c4.png",
                  onTab: () {},
                ),
                ProfileItem(
                  title: "FAQ",
                  img: "assets/c5.png",
                  onTab: () {},
                ),
                ProfileItem(
                  title: "Settings",
                  img: "assets/c6.png",
                  onTab: () {},
                ),
              ],
            ),
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

class ProfileItem extends StatelessWidget {
  final title;
  final img;
  VoidCallback onTab;
  ProfileItem({super.key, this.title, this.img, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: ListTile(
        onTap: onTab,
        leading: Image.asset("$img"),
        title: Text(
          '$title',
          style: GoogleFonts.publicSans(
            color: Colors.black,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
