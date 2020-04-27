import 'package:covid_19/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/widgets/chat_area/chat_window.dart';
import 'package:covid_19/widgets/main_description/main_desc.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MainDescription(),
        Expanded(
          child: Center(
            child:ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(border_radis)),
  // borderRadius: BorderRadius.only(
  //       topRight: Radius.circular(40),
  //       topLeft: Radius.circular(40),),
  child: ChatWindow(),
          )),
        )
      ],
    );
  }
}
