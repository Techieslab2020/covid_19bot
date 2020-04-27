import 'package:covid_19/constants/app_colors.dart';
import 'package:covid_19/views/chat/chat_page_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/locator.dart';
import 'package:covid_19/routing/route_names.dart';
import 'package:covid_19/services/navigation_service.dart';
 //bool isvisible = false;
class ChatwindowMobile extends StatefulWidget {
 // final String title;
 // const ChatwindowMobile();

  @override
  _ChatwindowMobileState createState() => _ChatwindowMobileState();
}

class _ChatwindowMobileState extends State<ChatwindowMobile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      locator<NavigationService>().navigateTo(ChatpageRoute);
        
      },
      child:ClipRRect(
      borderRadius: BorderRadius.circular(border_radis),
      child: Container(
      color: Colors.transparent,
      height: 60,
      alignment: Alignment.center,
      child: /*isvisible?ChatPageMobile():*/
      Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[Container(
             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
             margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child:Text(
        "Ask your Covid-Assist",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(border_radis),
      ),
    ), Image.asset("assets/image1.png",height: 50,width: 50,),])
    //   child: Text(
    //     title,
    //     style: TextStyle(
    //       fontSize: 18,
    //       fontWeight: FontWeight.w800,
    //       color: Colors.white,
    //     ),
    //   ),
    //   decoration: BoxDecoration(
    //     color: primaryColor,
    //     borderRadius: BorderRadius.circular(5),
    //   ),
    // ),
    )));
  }
}
