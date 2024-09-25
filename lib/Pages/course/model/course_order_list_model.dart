// To parse this JSON data, do
//
//     final courseOrderListModel = courseOrderListModelFromJson(jsonString);

import 'dart:convert';

CourseOrderListModel courseOrderListModelFromJson(String str) => CourseOrderListModel.fromJson(json.decode(str));


class CourseOrderListModel {
    bool success;
    Data data;

    CourseOrderListModel({
        required this.success,
        required this.data,
    });

    factory CourseOrderListModel.fromJson(Map<String, dynamic> json) => CourseOrderListModel(
        success: json["success"],
        data: Data.fromJson(json["data"]),
    );

    
}

class Data {
    List<CourseOrder> courseOrders;

    Data({
        required this.courseOrders,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        courseOrders: List<CourseOrder>.from(json["course_orders"].map((x) => CourseOrder.fromJson(x))),
    );


}

class CourseOrder {
    int id;
    String courseId;
    String status;
    Course course;

    CourseOrder({
        required this.id,
        required this.courseId,
        required this.status,
        required this.course,
    });

    factory CourseOrder.fromJson(Map<String, dynamic> json) => CourseOrder(
        id: json["id"],
        courseId: json["course_id"],
        status: json["status"],
        course: Course.fromJson(json["course"]),
    );

    
}

class Course {
    int id;
    String title;

    Course({
        required this.id,
        required this.title,
    });

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        title: json["title"],
    );

   
}
