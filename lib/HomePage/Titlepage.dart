import 'package:flutter/material.dart';

class Titlepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          raisedButton(context, "HomeStay", 'assets/images/lumle.jpg'),
        ],
      ),
    );
  }

  Widget raisedButton(BuildContext context, String title, String icon) {
    return Container(
      child: Stack(children: <Widget>[
        iconWidget(context, icon),
      ]),
    );
  }

  Widget iconWidget(BuildContext context, String icon) {
    return Padding(
        padding: const EdgeInsets.only(top: 5.0, left: 10.0),
        child: Row(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage(icon),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 40.0,
                top: 1.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          )
        ]));
  }
}
