import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqueschool2024/Pages/Login/controller/loginController.dart';
import 'package:uniqueschool2024/Pages/Login/view/login_page.dart';
import 'package:uniqueschool2024/Util/color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var loginCon = Get.put(LoginController());
  List<Map<String, dynamic>> genderType = [
    {"id": 1, "name": "Male", "slug": "Male"},
    {"id": 2, "name": "Female", "slug": "Female"},
  ];
  List<Map<String, dynamic>> studentTypeList = [
    {"id": 1, "name": "SSC", "slug": "SSC"},
    {"id": 2, "name": "HSC", "slug": "HSC"},
    {"id": 3, "name": "Honors", "slug": "Honors"},
    {"id": 4, "name": "Admission", "slug": "Admission"},
    {"id": 5, "name": "Job", "slug": "Job"},
    {"id": 6, "name": "Other", "slug": "Other"},
  ];
  List<Map<String, dynamic>> userTypeList = [
    {"id": 1, "name": "Student", "slug": "Student"},
    {"id": 2, "name": "Guardian", "slug": "Guardian"},
  ];
  var hight = 5.h;

  String? gender;
  String genderName = '';
  String? studentType;
  String studentTypeName = '';
  String? userType;
  String userTypeName = '';
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  bool isSelect = false;
  bool isSelect1 = false;
  bool isSelect2 = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              "Register",
              style: GoogleFonts.publicSans(
                  color: Color(0xff473F97),
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            width: 300.w,
            margin: EdgeInsets.only(left: 10.w),
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter your details below & free sign up",
              style: GoogleFonts.publicSans(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5E5E5E)),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Form(
            key: _formKey,
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                  color: Color(0xffc3e6f9).withOpacity(1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300.w,
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Full Name"),
                      ),
                      onChanged: (value) {
                        loginCon.fullName.value = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: hight.h,
                  ),
                  Container(
                    width: 300.w,
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Institute Name"),
                      ),
                      onChanged: (value) {
                        loginCon.instituteName.value = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: hight.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 100.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: DropdownButton(
                              padding: EdgeInsets.only(left: 9.w, right: 9.w),
                              isExpanded: true,
                              hint: Text(
                                "${isSelect ? genderName : 'Male'}",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp),
                              ),
                              underline: SizedBox(),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              value: gender,
                              items: genderType
                                  .map((e) => DropdownMenuItem(
                                        onTap: () {
                                          genderName = e['slug'].toString();
                                          print(genderName);
                                        },
                                        value: e['id'],
                                        child: Text(
                                          "${e['name']}",
                                          style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                print("gender $value");
                                loginCon.gender.value = value.toString();
                                setState(() {
                                  isSelect = true;
                                });
                              })),
                      Container(
                          width: 100.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: DropdownButton(
                              padding: EdgeInsets.only(left: 9.w, right: 9.w),
                              isExpanded: true,
                              hint: Text(
                                "${isSelect1 ? studentTypeName : 'SSC'}",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp),
                              ),
                              underline: SizedBox(),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              value: studentType,
                              items: studentTypeList
                                  .map((e) => DropdownMenuItem(
                                        onTap: () {
                                          studentTypeName =
                                              e['slug'].toString();
                                          print(genderName);
                                        },
                                        value: e['id'],
                                        child: Text(
                                          "${e['name']}",
                                          style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                print("Student Type $value");
                                loginCon.classInfo.value = value.toString();
                                setState(() {
                                  isSelect1 = true;
                                });
                              })),
                      Container(
                          width: 100.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: DropdownButton(
                              padding: EdgeInsets.only(left: 9.w, right: 9.w),
                              isExpanded: true,
                              hint: Text(
                                "${isSelect2 ? userTypeName : 'Student'}",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.sp),
                              ),
                              underline: SizedBox(),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              value: userType,
                              items: userTypeList
                                  .map((e) => DropdownMenuItem(
                                        onTap: () {
                                          userTypeName = e['slug'].toString();
                                          print(userTypeName);
                                        },
                                        value: e['id'],
                                        child: Text(
                                          "${e['name']}",
                                          style: GoogleFonts.inter(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                loginCon.userType.value = value.toString();
                                setState(() {
                                  isSelect2 = true;
                                });
                              })),
                    ],
                  ),
                  Container(
                    width: 300.w,
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          "Mobile Number",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
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
                      controller: password,
                      decoration: InputDecoration(
                        label: Text("Password"),
                      ),
                      onChanged: (value) {
                        loginCon.password.value = value;
                      },
                      maxLength: 5,
                    ),
                  ),
                  SizedBox(
                    height: hight.h,
                  ),
                  Container(
                    height: 45.h,
                    width: 300.w,
                    child: TextFormField(
                      controller: confirmPassword,
                      decoration: InputDecoration(
                        label: Text("Confirm Password"),
                      ),
                      onChanged: (value) {
                        loginCon.confirmPassword.value = value;
                      },
                      maxLength: 5,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                 
                      Obx(()=>loginCon.isRegLoading.value==false? InkWell(
                          onTap: () {
                            if (loginCon.fullName.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Full Name field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.instituteName.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Institute field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.phone.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Mobile number field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.gender.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Gender field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.classInfo.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Student Type field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.userType.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "User Type field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.password.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Password field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (loginCon.confirmPassword.value.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Confirm Password field is required",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else if (password.text != confirmPassword.text) {
                              Fluttertoast.showToast(
                                  msg:
                                      "Password and Confirm Password not match!",
                                  gravity: ToastGravity.CENTER,
                                  backgroundColor: Colors.red);
                            } else {
                              loginCon.registration();
                            }
                          },
                          child: Container(
                            width: 250.w,
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
                                      'GET STARTED',
                                      style: GoogleFonts.publicSans(
                                        color: Colors.white,
                                        fontSize: 15.sp,
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
                        ):Center(child: CircularProgressIndicator(),)
                      ),
                  SizedBox(
                    height: 20.h,
                  ),
                  
                  Container(
                    width: 300.w,
                    margin: EdgeInsets.only(left: 10.w),
                   // alignment: Alignment.center,
                    child: Text(
                      "By creating an account you have to agree with our them & condication.",
                      style: GoogleFonts.publicSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5E5E5E)),
                          textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Already have an account?",
                          style: GoogleFonts.publicSans(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5e5e5e)),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(LoginPage());
                        },
                        child: Container(
                          child: Text(
                            "Log in",
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
          ),
        ],
     )
    ));
  }
}
