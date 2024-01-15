import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniqueschool2024/Pages/categories_page.dart';
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
        Get.to(CategoriesPage());
      },
    ),
  ),
        ],
      ),
    );
  }
}