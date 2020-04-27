import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
  
class ImageCarouselMobile extends StatefulWidget {
  ImageCarouselMobile({@required this.imgList});

 final List<String> imgList;

  @override
  _ImageCarouselMobile createState() => _ImageCarouselMobile();
}

class _ImageCarouselMobile extends State<ImageCarouselMobile> {
  
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
