import 'package:flutter/material.dart';
import 'package:covid_19/views/chat/chat_page_view_mobile.dart';


bool isvisible = false;
class ChatWindowTabletDesktop extends StatefulWidget {
  
  const ChatWindowTabletDesktop();

  @override
  _ChatWindowTabletDesktopState createState() => _ChatWindowTabletDesktopState();
}

class _ChatWindowTabletDesktopState extends State<ChatWindowTabletDesktop> {
 
  void initState (){
  isvisible = true;
 }

  @override
  Widget build(BuildContext context) {
    return  ChatPageMobile();
    // return isvisible? ChatPageMobile():
    //  Column(
    //      children: <Widget>[
    //      //ImageCarousel(),
    //       SizedBox(height: 100,),
    //       GestureDetector(
    //       onTap: (){
    //       setState(() {
    //        isvisible = true;
    //     });
       
    //  //  locator<NavigationService>().navigateTo(ChatpageRoute);
    //   },
      
    //    child: 
    //      Align(
    //     alignment: Alignment.bottomRight,
    //     child: Container(
    //     padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
    //     child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children:[Container(
    //          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
    //         child:Text(
    //     "Ask your Coro-Assist",
    //     style: TextStyle(
    //       fontSize: 18,
    //       fontWeight: FontWeight.w800,
    //       color: Colors.white,
    //     ),
    //   ),
    //   decoration: BoxDecoration(
    //     color: Colors.pink,
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    // ),
    //     Image.asset("assets/image1.png",height: 100,width: 100,)])
    // //   child: Text(
    // //     widget.title,
    // //     style: TextStyle(
    // //       fontSize: 18,
    // //       fontWeight: FontWeight.w800,
    // //       color: Colors.white,
    // //     ),
    // //   ),
    // //   decoration: BoxDecoration(
    // //     color: primaryColor,
    // //     borderRadius: BorderRadius.circular(5),
    // //   ),
    // // )
    // ,)
    //   )
    //   )],
    //   );
  }
}
