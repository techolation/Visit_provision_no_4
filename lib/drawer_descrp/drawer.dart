import 'package:flutter/material.dart';

class CurvedDrawer extends StatelessWidget {
  static final List<String> listViewData = [
    "Top Places",
    "Feedback",
    "Clubs",
    "Service",
    "iOS Dev!",
    "Clubs",
    "Service",
    "Conatct Details",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ClipPath(
          clipper: RoundClipper(),
          child: Drawer(
            child: Container(
              color: Colors.lightBlue,
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 200, 30),
                    child: Icon(Icons.dehaze, size: 25, color: Colors.white),
                  ),
                  Column(
                    children: listViewData
                        .map((data) => ListTile(
                              title: Text(data,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              onTap: () {
                                // Update the state of the app
                                // ...
                                // Then close the drawer
                                Navigator.pop(context);
                              },
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height);
    path.quadraticBezierTo(size.height / 2, size.width, size.width / 2, 0);

    path.lineTo(size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
