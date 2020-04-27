import 'package:flutter/material.dart';
import 'package:covid_19/locator.dart';
import 'package:covid_19/routing/route_names.dart';
import 'package:covid_19/services/navigation_service.dart';
import '../../extensions/hover_extensions.dart';
class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:GestureDetector(
        onTap:(){ locator<NavigationService>().navigateTo(HomeRoute);},
        child:Column(
          children:[
           Align(
             alignment: Alignment.center,
            child:
            Text("powered by", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100, fontSize: 10),),),
           Text("aliya.ai", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200, fontSize: 40),) 
           ]))
      // Image.asset('assets/logo.png'),
      // MaterialButton(
      //             color: Colors.pink,
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.all(Radius.circular(20.0))),
      //             onPressed: () {
      //               locator<NavigationService>().navigateTo(HomeRoute);
      //             },
      //             child: Text(
      //               "Covid-19",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           )
    ).showCursorOnHover;
  }
}
