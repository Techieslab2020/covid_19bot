import 'package:covid_19/widgets/centered_view/centered_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'centered_view_mobile.dart';


class CenteredView extends StatelessWidget {
   final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
        desktop: CenteredViewDesktop(child: child,),
        mobile: CenteredViewMobile(child: child,),
           
    );
  }
}
