import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:uniqueschool2024/Util/Localstorekey.dart';
import 'package:uniqueschool2024/Util/app_constant.dart';
import 'package:uniqueschool2024/home.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var isRegLoading = false.obs;
  var isLogLoading = false.obs;
  final _box = GetStorage();
  var userClient = http.Client();
  var url = AppConstants.baseUrl;
  var email = ''.obs; 
  var password =''.obs;
  login() async {
    try {
      var mapData = {"login": email.value.toString(), "password": password.value.toString()};

      isLogLoading(true);
      var response = await http.post(Uri.parse("${url}auth/login"), body: mapData);
      print("${response.statusCode}");

      if (response.statusCode == 202) {
        var jsonData = jsonDecode(response.body);
        print(jsonData);
        var getToken = jsonData['token'];
print(getToken);
        print(_box.read(LocalStoreKey.token));

        if (getToken != null) {
          Get.offAll(Home());
        }
      }
       if (response.statusCode == 401) {
      
Fluttertoast.showToast(msg: "Mobile number or Password not match",
gravity: ToastGravity.CENTER,
backgroundColor: Colors.red);
        
      }

      isLogLoading(false);
    } catch (e) {
      isLogLoading(false);
      print("Error $e");
    }
  }

  // registrationTwo() async {
  //   var token = _box.read(LocalStoreKey.signUpToken);
  //   print("With Koli ");
  //   print("Profile Pic: ${profilePic.value}");
  //   print("Identity No: ${identityNo.value}");
  //   print("User ID: ${userId.value}");
  //   print("NID Pic 1: ${nidPic1.value}");
  //   print("NID Pic 2: ${nidPic2.value}");
  //   print("Education: ${education.value} Profession: ${profession.value}");
  //   print("ID Pic 1: ${idPic1.value} ID Pic 2: ${idPic2.value}");

  //   print("Designation: ${designation.value}");
  //   print("Company Name: ${companyName.value}");
  //   print("Nominee Name: ${nomineeName.value}");
  //   print(
  //       "Nominee Contact: ${nomineeContact.value} Nominee Relation: ${nominneeRelation.value}");

  //   print("Question: ${question.value} Answer: ${answer.value}");

  //   print("Day: ${day.value} Month: ${month.value} Year: ${year.value}");

  //   print("Emergency Contact Number: ${emergencyContactNumber.value}");
  //   print("Emergency Contact Name: ${emergencyContactName.value}");
  //   print("Residence Area: ${residanceArea.value}");
  //   print("Blood Group: ${bloodGroup.value}");
  //   print("Facebook Link: ${facebookLink.value}");

  //   var verifyUrl = _box.read(LocalStoreKey.signUpUrl);
  //   var url = Uri.parse(verifyUrl);
  //   print("koli2 $url");
  //   try {
  //     isLoadingReg2(true);
  //     //multipart post
  //     http.MultipartRequest request = http.MultipartRequest('POST', url);

  //     request.fields['identity_no'] = identityNo.value.toString();

  //     request.fields['education'] = education.value.toString();
  //     request.fields['profession'] = profession.value.toString();
  //     request.fields['designation'] = designation.value.toString();
  //     request.fields['company_name'] = companyName.value.toString();

  //     request.fields['s_question'] = question.value.toString();
  //     request.fields['s_ans'] = answer.value.toString();
  //     request.fields['day'] = question.value.toString();
  //     request.fields['month'] = answer.value.toString();
  //     request.fields['year'] = bloodGroup.value.toString();

  //     request.fields['emergency_contact_person_name'] =
  //         emergencyContactName.value.toString();
  //     request.fields['emergency_contact_number'] =
  //         emergencyContactNumber.value.toString();
  //     request.fields['residance_area'] = residanceArea.value.toString();
  //     request.fields['fblink'] = facebookLink.value.toString();
  //     request.fields['>nominee_name '] = nomineeName.value.toString();
  //     request.fields['nominee_contact'] = nomineeContact.value.toString();
  //     request.fields['nominee_relation'] = nominneeRelation.value.toString();
  //     request.fields['blood_group'] = bloodGroup.value.toString();

  //     request.headers.addAll(
  //       {'Authorization': 'Bearer $token', 'Content-Type': 'application/json'},
  //     );
  //     http.MultipartFile profilePicFile = await http.MultipartFile.fromPath(
  //         "profile_picture", "${profilePic.value}");
  //     http.MultipartFile nid1PartFile =
  //         await http.MultipartFile.fromPath("nid_front", "${nidPic1.value}");
  //     http.MultipartFile nid2PartFile =
  //         await http.MultipartFile.fromPath("nid_back", "${nidPic2.value}");

  //     http.MultipartFile idCartFile1 =
  //         await http.MultipartFile.fromPath("id_front_photo", "");

  //     http.MultipartFile idCartFile2 =
  //         await http.MultipartFile.fromPath("id_back_photo", "");

  //     request.files.add(profilePicFile);
  //     request.files.add(nid2PartFile);
  //     request.files.add(nid1PartFile);
  //     request.files.add(idCartFile1);
  //     request.files.add(idCartFile2);

  //     http.StreamedResponse response = await request.send();

  //     if (response.statusCode == 200) {
  //       print(" koli ${response.request}");
  //       print(" koli ${request.fields}");
  //       print(" koli ${request.files}");

  //       Get.defaultDialog(
  //         title: "",
  //         titleStyle: GoogleFonts.inter(
  //           fontSize: 14.sp,
  //         ),
  //         onConfirm: () {
  //           Get.to(LoginScreen());
  //         },
  //         middleText: '$finishMsg',
  //         backgroundColor: Colors.grey[50],
  //         textConfirm: "Ok",
  //       );

  //       isLoadingReg2(false);
  //     }
  //     print("koli ${response.statusCode}");
  //     return response.statusCode;
  //   } catch (e) {
  //     isLoadingReg2(false);
  //     print("Error $e");
  //   }
  // }



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
