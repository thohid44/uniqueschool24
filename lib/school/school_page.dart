import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class MyGridView extends StatelessWidget {
        
  List<Map<String,dynamic>> itemList  = [
{
  "title":"SSC",
  "image":"assets/blob.png"
},
{
  "title":"HSC",
  "image":"assets/blob.png"
},
{
  "title":"Honors",
  "image":"assets/blob.png"
},
{
  "title":"Admission",
  "image":"assets/blob.png"
},
{
  "title":"Job",
  "image":"assets/blob.png"
},
{
  "title":"Exam",
  "image":"assets/blob.png"
},
{
  "title":"Tutor",
  "image":"assets/blob.png"
},
{
  "title":"Team",
  "image":"assets/blob.png"
}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [

  Container(
    width: 300.w,
  margin: EdgeInsets.all(10),
    child: Row(
      children: [
        Container(
           width: 240.w,
           height: 40.h,
          child: TextFormField(
             decoration: new InputDecoration.collapsed(
    hintText: 'Username'
  ),
            // decoration:InputDecoration(
            // border: InputBorder.none,
            // )
            
          ),
        ),
        Container(
          height: 40.h, width: 40.w, 
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: Color(0xff0961F5),
            borderRadius: BorderRadius.circular(12.r)
          ),
          child: Image.asset("assets/search1.png", color: Colors.white,fit: BoxFit.fitHeight,),
        )
      ],
    ),
  ),  

   SizedBox(height: 25.h,),
       Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
             GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
          ],
        ),
        SizedBox(height: 15.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
             GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
          ],
        ),
         SizedBox(height: 15.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
             GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
          ],
        ),
         SizedBox(height: 15.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
             GridItem(imageUrl: "${itemList[0]['image']}", text: '${itemList[0]['title']}'),
          ],
        )
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  const GridItem({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: Colors.amber
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Image.asset(
              imageUrl,
              height: 50.h, // Set the desired height for the image
              width: 50.w, // Take the full width available
              fit: BoxFit.cover, // Adjust how the image fits into the container
            ),
            // Text under the image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: GoogleFonts.publicSans(fontSize: 16.sp),
              ),
            ),
          ],
        ),
    );
    
  }
}
