import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:uniqueschool2024/Pages/Home/model/class_list_model.dart';
import 'package:uniqueschool2024/Pages/Login/view/success_page.dart';
import 'package:uniqueschool2024/Util/Localstorekey.dart';
import 'package:uniqueschool2024/Util/app_constant.dart';
import 'package:uniqueschool2024/Pages/Home/views/home.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var isRegLoading = false.obs;
  var isLogLoading = false.obs;
  final _box = GetStorage();
  var userClient = http.Client();
  var url = AppConstants.baseUrl;
  var phone = ''.obs;
  var instituteName = ''.obs;
  var fullName = ''.obs;
  var gender = ''.obs;
  var classInfo = ''.obs;
  var userType = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  login() async {
    try {
      var mapData = {
        "phone": phone.value.toString(),
        "password": password.value.toString()
      };

      isLogLoading(true);
      var response =
          await http.post(Uri.parse("${url}student/login"), body: mapData);
      print("${response.statusCode}");
      var jsonData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(jsonData);
        var getToken = jsonData['access_token'];
        _box.write(LocalStoreKey.token, getToken);

        print(_box.read(LocalStoreKey.token));

        if (getToken != null) {
          Get.offAll(LoginSuccessPage());
        }
      }
      if (response.statusCode == 401) {
        Fluttertoast.showToast(
            msg: "Mobile number or Password not match",
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red);
      }

      isLogLoading(false);
    } catch (e) {
      isLogLoading(false);
      print("Error $e");
    }
  }

  logout() async {
    try {
     

      isLogLoading(true);
      var response =
          await http.post(Uri.parse("${url}student/logout"),);
      print("${response.statusCode}");
      var jsonData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(jsonData);
        var getToken = jsonData['access_token'];
        _box.write(LocalStoreKey.token, getToken);

        print(_box.read(LocalStoreKey.token));

        if (getToken != null) {
          Get.offAll(Home());
        }
      }
      if (response.statusCode == 401) {
        Fluttertoast.showToast(
            msg: "Mobile number or Password not match",
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red);
      }

      isLogLoading(false);
    } catch (e) {
      isLogLoading(false);
      print("Error $e");
    }
  }

  registration() async {
    try {
      var mapData = {
        "name": fullName.value.toString(),
        "phone": phone.value.toString(),
        "institute": instituteName.value.toString(),
        "password": password.value.toString(),
        "password_confirmation": confirmPassword.value,
        "gender": gender.value.toString(),
        "class_info": classInfo.value.toString(),
        "type": userType.value.toString()
      };
      print(mapData);
      isRegLoading(true);
      var response = await http.post(Uri.parse("${url}student/registration"),
          body: mapData);

      if (response.statusCode == 200) {
        Get.offAll(Home());

        isRegLoading(false);
      }

      isRegLoading(false);
    } catch (e) {
      isRegLoading(false);
      print("Error $e");
    }
  }

  // changePassword() async {
  //   var token = _box.read(LocalStoreKey.token);

  //   var mapData = {
  //     "current": currentPassword.value.toString(),
  //     "password": password.value.toString(),
  //     "password_confirmation": confirmPassword.value.toString(),
  //   };

  //   try {
  //     isChangeLoading(true);
  //     var response = await http.post(Uri.parse("${baseUrl}auth/forgotpassword"),
  //         headers: {
  //           'Authorization': 'Bearer ' + token,
  //         },
  //         body: mapData);

  //     if (response.statusCode == 200) {
  //       print(response.statusCode);
  //       var jsonData = jsonDecode(response.body);
  //       Fluttertoast.showToast(
  //           msg: "Password Successfully Change", gravity: ToastGravity.CENTER);
  //       isChangeLoading(false);
  //     }
  //   } catch (e) {
  //     isChangeLoading(false);
  //     print("Error $e");
  //   }
  // }

  // forgetPassword(email) async {
  //   var mapData = {"email": email};

  //   try {
  //     isChangeLoading(true);
  //     var response = await http.post(Uri.parse("${baseUrl}auth/forgotpassword"),
  //         headers: {"Accept": "Application/json"}, body: mapData);
  //     print(response.statusCode);
  //     if (response.statusCode == 200) {
  //       var jsonData = jsonDecode(response.body);
  //       Get.defaultDialog(
  //         title: "",
  //         titleStyle: GoogleFonts.inter(
  //           fontSize: 14.sp,
  //         ),
  //         onConfirm: () {

  //         },
  //         middleText: 'Your password reset link has been emailed to you',
  //         backgroundColor: Colors.grey[50],
  //         textConfirm: "Ok",
  //       );
  //       isChangeLoading(false);
  //     }
  //   } catch (e) {
  //     isChangeLoading(false);
  //     print("Error $e");
  //   }
  // }
}
