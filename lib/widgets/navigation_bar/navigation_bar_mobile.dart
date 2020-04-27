import 'package:covid_19/routing/route_names.dart';
import 'package:covid_19/widgets/navbar_item/navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),
        //  NavBarLogo(),
          Align(alignment: Alignment.centerLeft,child:NavBarItem('Home',HomeRoute) ,),
         Align(alignment: Alignment.centerLeft,child:NavBarItem('About',AboutRoute) ,) 
        ],
      ),
    );
  }
}
