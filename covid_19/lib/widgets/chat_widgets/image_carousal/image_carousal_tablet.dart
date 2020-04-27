import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
  
class ImageCarouselTablet extends StatefulWidget {
  ImageCarouselTablet({@required this.imgList});

 final List<String> imgList;

  @override
  _ImageCarouselTablet createState() => _ImageCarouselTablet();
}

class _ImageCarouselTablet extends State<ImageCarouselTablet> {
  
  @override
  Widget build(BuildContext context) {
   
    return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
          //       child:Container(
          //        width: 200,
          //       margin: EdgeInsets.symmetric(horizontal: 5.0),
          //       decoration: BoxDecoration(
          //  // color: Colors.lightBlue[50]
          // ),
                child:  CarouselSlider(
      height: 200.0,
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: widget.imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              // width: 800,
               
              ),
            ),
          );
        },
      ).toList(),
    )               
                 
                // )
    );
               
  }
 
    
}
