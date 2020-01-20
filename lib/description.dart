import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Description extends StatelessWidget {
  final String desc = "Phewa Lake, Phewa Tal or Fewa Lake is a freshwater lake in Nepal formerly called Baidam Tal located in the south of the Pokhara Valley that includes Pokhara city; parts of Sarangkot and Kaskikot. The lake is stream-fed but a dam regulates the water reserves, therefore, the lake is classified as semi-natural freshwater lake.[1] It is the second largest lake in Nepal; the largest in Gandaki Pradesh after the Rara lake in the comparison to Nepal \'s water bodies.[2] It is the most popular and most visited lake of Nepal. It is the only lake in Nepal to have a templeTal Barahi Temple at the central part of lake. Phewa lake is located at an altitude of 742 m (2,434 ft) and covers an area of about 4.43 km2 (1.7 sq mi)";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        body: SingleChildScrollView(
          child: Wrap(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 130, 0),
            child:Text('PHEWA LAKE', 
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Aclonica',
                shadows: [
                  Shadow(
                  blurRadius: 10.0,
                  color: Colors.blue,
                  offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
              ),),
                
                 Padding(
                      padding: EdgeInsets.all(10),
                      child: ImageCarousel(),    
                    ),

                  Padding(padding: EdgeInsets.fromLTRB(80, 5, 0, 0),
                      child:Text('"ALL BEAUTY LIES HERE."', 
              
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Aclonica',
                        ),
                        ),), 

                   Padding(padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                        child:Text(desc, 
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                  
                        ),
                        ),), 
                    Padding(padding: EdgeInsets.all(20),
                    child:
                     Text('Simplest Route:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    Padding(padding: EdgeInsets.fromLTRB(12, 0, 20, 20),
                        child: Stack(
                          children: <Widget>[
                            Image.asset('images/routes/routephewa.jpg'),
                            Positioned(
                                right: 10.0,
                                bottom: 30.0,
                                child: new FloatingActionButton(
                                  child: const Icon(Icons.navigation),
                                  backgroundColor: Colors.green,
                                  elevation: 10,
                                  onPressed: () {},
                                ),
                            ),

                            
                          ],
                          
                        )
                        
                    ),
          ],
        ),
        )
      ),
      
    );
  }
}



class ImageCarousel extends StatefulWidget {
  @override
  ImageCarouselState createState() => new ImageCarouselState();
}

class ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 4,
      width: width,
      child: Carousel(
                  animationDuration: Duration(seconds: 2),
                  autoplayDuration: Duration(seconds: 2),
                  showIndicator: false,
                  images: [
                    AssetImage('images/phewa/phewa1.jpg'),
                    AssetImage('images/phewa/phewa2.jpg'),
                    AssetImage('images/phewa/phewa3.jpg'),
                    AssetImage('images/phewa/phewa4.jpg'),
                    
                  ],
                ),
      
    );
  }
}

