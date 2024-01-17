import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_bar_widget.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
return   SafeArea(
      child: Scaffold(
        appBar: customAppBar("Team"),
        body: ListView.builder(
          itemCount: 6,
        itemBuilder: (context,index){
            return CustomListTile(
              iconData: Icons.star,
              title: 'Star Item',
              subtitle: 'This is a star item with a subtitle.',
            );
        },
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;

  const CustomListTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.only(left: 10.w, right: 10.w),
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color:Colors.black26, 
        width: 0.9))
      ),
      child:Row(
        children: [
CircleAvatar(
  radius: 25.r,
        backgroundColor: const Color(0xff764abc),
        child: Icon(Icons.person, color: Colors.white,),


      ),

      Container(
        margin: EdgeInsets.only(left:15.w ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Faisal Sir",style: GoogleFonts.publicSans(
                fontSize:16.sp, 
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),),
            ),
             Container(
              child: Text("Bangla ",style: GoogleFonts.publicSans(
                fontSize:13.sp, 
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),),
            )
          ],
        ),
      )
        ],
    
   
    )
    );
  }
}