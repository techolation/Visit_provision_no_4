import 'package:flutter/material.dart';

class Homestay extends StatelessWidget {
  Widget headingWidget(BuildContext context, String title) {
    return Container(
        child: Stack(children: <Widget>[
      Container(
          padding: const EdgeInsets.only(top: 5.0, left: 20.0),
          child: Row(children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 75),
            SizedBox(width: 100),
            RaisedButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(12.0),
              ),
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.black,
              child:
                  Text("Explore".toUpperCase(), style: TextStyle(fontSize: 8)),
            ),
          ]))
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      headingWidget(context, 'HomeStay'),
      Padding(
        padding: const EdgeInsets.only(top: 55.0, left: 20.0),
        child: SizedBox(
          height: 180.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardItemWidget(
                  context,
                  'assets/images/Bindabasini.jpg',
                  'Bindabasini Temple',
                  'hellosaaaaaaaaaaaaaaaaaaaaaaaaaa',
                  'assets/images/Bindabasini.jpg'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(context, 'assets/images/ghandruk.jpg', 'Ghandruk',
                  'hello', 'assets/images/ghandruk.jpg'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(context, 'assets/images/homeSTAY.jpg', 'HomeStay',
                  'hello', 'assets/images/homeSTAY.jpg'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(context, 'assets/images/kahudanda.jpg',
                  'Kahu Danda', 'hello', 'assets/images/kahudanda.jpg'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(context, 'assets/images/lumle.jpg', 'Lumle',
                  'hello', 'assets/images/lumle.jpg'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(
                  context,
                  'assets/images/picnic1.jpg',
                  'Dipangggggggggggggggg',
                  'hello',
                  'assets/images/picnic1.jpg'),
              Padding(
                padding: EdgeInsets.only(right: 18.0),
              )
            ],
          ),
        ),
      )
    ]));
  }

  Widget cardItemWidget(BuildContext context, String image, String title,
      String desc, String icon) {
    return GestureDetector(
        // onTap: (() {
        //   Navigator.push(
        //       context,
        //       new MaterialPageRoute(
        //           builder: (context) => DetailPageName(image, title)));
        // }),
        child: Container(
      width: 220.0,
      height: 180.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 220.0,
                  height: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ],
            ),
            circleWidgets(title, desc, icon),
          ]),
    ));
  }

  Widget circleWidgets(String title, String desc, String icon) {
    return Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 10.0),
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
          ),
          SizedBox(
            width: 10.0,
          ),
          Row(
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  width: 155,
                  height: 40,
                  padding: EdgeInsets.only(right: 1.0),
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  padding: EdgeInsets.only(top: 22, right: 1.0),
                  child: Text(
                    desc,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey[20],
                      fontSize: 12.0,
                    ),
                  ),
                )
              ]),
            ],
          ),
        ]));
  }
}
