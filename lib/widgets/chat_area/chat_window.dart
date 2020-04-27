import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:covid_19/widgets/chat_area/chat_window_mobile.dart';
import 'package:covid_19/widgets/chat_area/chat_window_tablet_desktop.dart';


class ChatWindow extends StatelessWidget {
  
  ChatWindow();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ChatwindowMobile(),
      tablet: ChatwindowMobile(),
      desktop: ChatWindowTabletDesktop(),
      
    );
  }
}
