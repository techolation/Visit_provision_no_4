import 'package:flutter/material.dart';

class Titlepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: SizedBox(
          height: 110.0,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  raisedButton(context, "Picnic Spot"),
                  raisedButton(context, "HomeStay"),
                  raisedButton(context, "Adventure"),
                  raisedButton(context, "Religious Place"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  raisedButton(context, "Trekking"),
                  raisedButton(context, "Scenery"),
                  raisedButton(context, "Scenery"),
                ],
              ),
            ],
          )),
    );
  }

  Widget raisedButton(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.all(2),
      child: Stack(children: <Widget>[
        RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
            ),
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(title.toUpperCase(), style: TextStyle(fontSize: 8))),
      ]),
    );
  }
}
