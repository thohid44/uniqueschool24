import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/Home/views/home.dart';
import 'package:uniqueschool2024/Pages/Login/controller/loginController.dart';
import 'package:uniqueschool2024/Pages/Login/view/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginCon = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 150.h,
            child: Image.asset("assets/vector.png"),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Login",
              style: GoogleFonts.publicSans(
                  fontSize: 34.sp, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            width: 300.w,
            margin: EdgeInsets.only(left: 70.w),
            alignment: Alignment.center,
            child: Text(
              "Login to Continue",
              style: GoogleFonts.publicSans(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black26),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 400.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
                color: Color(0xffc3e6f9).withOpacity(1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.w,
                  height: 40.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Mobile Number"),
                    ),
                    onChanged: (value) {
                      loginCon.phone.value = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 40.h,
                  width: 300.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                    ),
                    onChanged: (value) {
                      loginCon.password.value = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Obx(() => loginCon.isLogLoading.value == false
                    ? InkWell(
                        onTap: () {
                          if (loginCon.phone.value.isEmpty) {
                            Fluttertoast.showToast(
                                msg: "Mobile number field is required",
                                gravity: ToastGravity.CENTER,
                                backgroundColor: Colors.red);
                          } else if (loginCon.password.value.isEmpty) {
                            Fluttertoast.showToast(
                                msg: "Password field is required",
                                gravity: ToastGravity.CENTER,
                                backgroundColor: Colors.red);
                          } else {
                            loginCon.login();
                          }
                        },
                        child: Container(
                          width: 200.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFF844FFC),
                                Color(0xFF491EB8),
                              ],
                              stops: [0.1357, 0.9835],
                              transform: GradientRotation(200.42),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.w),
                                child: Text(
                                  'LOGIN',
                                  style: GoogleFonts.publicSans(
                                    color: Colors.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 25.w,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Center(child: CircularProgressIndicator())),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.publicSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Don’t have an account?",
                        style: GoogleFonts.publicSans(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff5e5e5e)),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(SignUpPage());
                      },
                      child: Container(
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.publicSans(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5e5e5e)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
