import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tripshiptask/school/course_details_page.dart';
import 'package:tripshiptask/school/school_page.dart';
import 'package:tripshiptask/school/team_page.dart';

class SchoolPageList extends StatefulWidget {
  const SchoolPageList({super.key});

  @override
  State<SchoolPageList> createState() => _SchoolPageListState();
}

class _SchoolPageListState extends State<SchoolPageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Title"),
      ),
      body: Column(
        children: [

  Card(
    child: ListTile(
      
      iconColor: Colors.teal,
      title: Text("Page"),
      onTap: (){
        Get.to(MyGridView());
      },
    ),
  ),

   Card(
    child: ListTile(
      
      iconColor: Colors.teal,
      title: Text("Team"),
      onTap: (){
        Get.to(TeamPage());
      },
    ),
  ),
   Card(
    child: ListTile(
      
      iconColor: Colors.teal,
      title: Text("CourseOverViewPage"),
      onTap: (){
        Get.to(CourseOverViewPage());
      },
    ),
  ),
        ],
      ),
    );
  }
}