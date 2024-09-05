
import 'package:flutter/material.dart';
Widget leftDrawer(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(right: 40.0),
    child: ClipPath(
    //  clipper: LDOvalRightBorderClipper(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Drawer(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Center(
                        child: Image.asset('assets/oxford.png')
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.home,
                    
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.school,
                     
                    ),
                    title: const Text(
                      'About School',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.format_quote_outlined,
                    
                    ),
                    title: const Text(
                      'Chairman Message',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                  

                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.format_quote,
                  
                    ),
                    title: const Text(
                      'Principal Message',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
               

                    },
                  ),
                  const Divider(),

                  ListTile(
                    leading: const Icon(
                      Icons.person,
                  
                    ),
                    title: const Text(
                      'Student\'s Profile',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                     

                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.payments,
                 
                    ),
                    title: const Text(
                      'Payment History',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                  
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.verified_user,
                  
                    ),
                    title: const Text(
                      'Teacher\'s List',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                  

                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.calendar_month,
                    
                    ),
                    title: const Text(
                      'Academic Calendar',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                  

                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                    
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () async{
                 
                    

                    },
                  ),
                 
                ],
              ),
            ),
            Positioned(
              bottom: 0,
                left: 0,
                right: 0,
                child: Container(
              margin: const EdgeInsets.only(right: 25),
              padding: EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Powered by WebPoint Ltd',
                
                ),
              ),
            ))
          ],
        ),
      ),
    ),
  );
}


