import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:uniqueschool2024/Pages/course/model/course_lecture_note_model.dart';
import 'package:uniqueschool2024/Pages/course/model/course_order_list_model.dart';
import 'package:uniqueschool2024/Util/Localstorekey.dart';
import 'package:uniqueschool2024/Util/app_constant.dart';

class CourseOrderedListController extends GetxController {
  var isLoading = false.obs;

  var _box = GetStorage();

  void onInit() {
    super.onInit();
    getCourseOrder();
  }

  CourseLectureNoteModel? courseLectureNoteModel;

  CourseOrderListModel? courseOrderListModel;

  getCourseOrder() async {
    var token = _box.read(LocalStoreKey.token);
    try {
       isLoading(true);
      var response = await http.get(
          Uri.parse("${AppConstants.baseUrl}${AppConstants.courseOrderlist}"),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + token,
          });

      var jsonData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(jsonData);
        courseOrderListModel = CourseOrderListModel.fromJson(jsonData);
          isLoading(false);
      }
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print("Error: $e");
    }
  }
}
