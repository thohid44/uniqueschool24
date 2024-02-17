import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uniqueschool2024/Pages/Home/model/class_list_model.dart';
import 'package:uniqueschool2024/Util/Localstorekey.dart';
import 'package:uniqueschool2024/Util/app_constant.dart';
import 'package:http/http.dart' as http;

class ClassListController extends GetxController {
  var isLoading = false.obs;
  var url = AppConstants.baseUrl;
  final _box = GetStorage();
  List<ClassCategory> classList = <ClassCategory>[].obs;

  getClassList() async {
    var token = _box.read(LocalStoreKey.token);
    try {
      isLoading(true);
      var response = await http.get(Uri.parse("${url}class"),
          headers: {'Authorization': "Bearer $token"});

      var jsonData = jsonDecode(response.body);
      classList.clear();
      print(jsonData);
      if (response.statusCode == 200) {
        ClassListModel data = ClassListModel.fromJson(jsonData);

        classList = data.data!;
        print(classList.length);
        isLoading(false);
      }
    } catch (e) {
          isLoading(false);
      print(e);
    }
  }
}
