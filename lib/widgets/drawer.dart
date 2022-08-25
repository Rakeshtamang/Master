import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    margin: EdgeInsets.all(0),
                    accountName: Text(
                      'Emma Raducanu',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text(
                      'tamangrakesh450@gmail.com',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ))),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
