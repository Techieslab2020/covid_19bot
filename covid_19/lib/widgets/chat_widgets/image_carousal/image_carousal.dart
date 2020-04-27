import 'package:covid_19/widgets/chat_widgets/image_carousal/image_carousal_mobile.dart';
import 'package:covid_19/widgets/chat_widgets/image_carousal/image_carousal_tablet.dart';
import 'package:covid_19/widgets/chat_widgets/image_carousal/image_carousal_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


List<String> imgList = 
 [ 'https://image.shutterstock.com/image-vector/coronavirus-precaution-tips-vector-illustration-260nw-1635770911.jpg',
  'https://firebasestorage.googleapis.com/v0/b/flow-2-mweipw.appspot.com/o/Images%2Fguidelines%2Fcoronavirus-safety-tw.jpg?alt=media&token=f3c66638-726f-4822-831a-eccb986f98e4',
  'https://ichef.bbci.co.uk/news/208/cpsprodpb/931B/production/_111195673_corona_whatyouneedtodo_without_title-nc.png',
  
  
];
class ImageCarousal extends StatelessWidget {
  
  const ImageCarousal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
        desktop: ImageCarouselTabletDesktop(imgList:imgList),
        mobile: ImageCarouselMobile(imgList: imgList,),
        tablet: ImageCarouselTablet(imgList: imgList,) ,
    );
  }
}
