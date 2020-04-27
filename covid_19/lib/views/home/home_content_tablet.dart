import 'package:covid_19/constants/app_colors.dart';
import 'package:covid_19/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/widgets/chat_area/chat_window.dart';
import 'package:covid_19/widgets/main_description/main_desc.dart';

class HomeContentTablet extends StatelessWidget {
  const HomeContentTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       borderRadius: BorderRadius.circular(border_radis),
      child:Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
       
        SizedBox(
          height: 20,
        ),
        MainDescription(),
        SizedBox(
          height: 50,
        ),
        ClipRRect(
  borderRadius: BorderRadius.circular(border_radis),
  
  child:ChatWindow(),
        )
      ],
    )
    ,);
    
  }
}
