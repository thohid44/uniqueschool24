import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniqueschool2024/Pages/Login/controller/loginController.dart';

class CustomDrawer extends StatelessWidget {
  var logCon = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(170.0),
        bottomRight: Radius.circular(170.0),
      ),
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
                      child: Center(child: Image.asset('assets/oxford.png')),
                    ),
                  ),
                  ListTile(
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
                    title: const Text(
                      'COURSES',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'BOOKS',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'ABOUTUS',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'CONTACTUS',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'TUTOR',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'TEAM',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'LOGOUT',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      logCon.logout();
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'APP VERSION',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () async {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
