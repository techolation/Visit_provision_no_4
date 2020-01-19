import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  ImageCarouselState createState() => new ImageCarouselState();
}

class ImageCarouselState extends State<ImageCarousel>{
   

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
     
     return Column(
      children: <Widget>[
        new Container(
          height: height / 4,
          width: width,
          child: new Stack(
            children: <Widget>[
              ClipPath(
                clipper: RoundClipper(),
                
                child: Carousel(
                  animationDuration: Duration(seconds: 2),
                  autoplayDuration: Duration(seconds: 2),
                  showIndicator: false,
                  images: [
                    AssetImage('assets/images/exploreImage/pokhara1.jpg'),
                    AssetImage('assets/images/exploreImage/Pokhara2.jpg'),
                    AssetImage('assets/images/exploreImage/Pokhara3.jpg'),
                    AssetImage('assets/images/exploreImage/Pokhara4.Jpg'),
                    AssetImage('assets/images/exploreImage/Pokhara5.jpg'),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(170, 100, 20, 20),
              
             child: Column(
                mainAxisSize: MainAxisSize.max,
               // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('assets/images/exploreImage/homeicon.png'),
                  height: 20,
                  width: 20,)
                ],
              ),
              ),
            ],
          ),
        ),
        Text(
          'Welcome to Province No 4',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
      ],
    );

    // return Scaffold(
      
    //   body: ListView(
    //     children: <Widget>[
    //       imageslidercarousel,
    //     ],
    //   ),
    // );
  }
}

class RoundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
