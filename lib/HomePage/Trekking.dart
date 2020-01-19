import 'package:flutter/material.dart';

class Trekking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Container(
        padding: const EdgeInsets.only(top: 18.0, left: 20.0),
        child: Text(
          'Trekking',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 55.0, left: 20.0),
        child: SizedBox(
          height: 170.0,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardItemWidget(context, 'assets/images/Bindabasini.jpg',
                  'Bindabasini Temple', 'hellosaaaaaaaaaaaaaaaaaaaaaaaaaa'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(
                  context, 'assets/images/ghandruk.jpg', 'Ghandruk', 'hello'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(
                  context, 'assets/images/homeSTAY.jpg', 'HomeStay', 'hello'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(context, 'assets/images/kahudanda.jpg',
                  'Kahu Danda', 'hello'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(
                  context, 'assets/images/lumle.jpg', 'Lumle', 'hello'),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
              ),
              cardItemWidget(context, 'assets/images/picnic1.jpg',
                  'Dipangggggggggggggggg', 'hello'),
              Padding(
                padding: EdgeInsets.only(right: 18.0),
              )
            ],
          ),
        ),
      )
    ]));
  }

  Widget cardItemWidget(
      BuildContext context, String image, String title, String desc) {
    return GestureDetector(
        // onTap: (() {
        //   Navigator.push(
        //       context,
        //       new MaterialPageRoute(
        //           builder: (context) => DetailPageName(image, title)));
        // }),
        child: Container(
      width: 110.0,
      height: 170.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Colors.white),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 95.0,
                  height: 95.0,
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
            details(title, desc),
          ]),
    ));
  }

  Widget details(String title, String desc) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 10.0),
      child: Row(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              width: 100,
              height: 40,
              padding: EdgeInsets.only(right: 1.0),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 100,
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
    );
  }
}
