
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:covid_19/locator.dart';
import 'package:covid_19/routing/route_names.dart';
import 'package:covid_19/routing/router.dart';
import 'package:covid_19/services/navigation_service.dart';
import 'package:covid_19/widgets/centered_view/centered_view.dart';
import 'package:covid_19/widgets/navigation_bar/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? null
            : null,
            
        backgroundColor: Colors.white,
        body:sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? CenteredView(child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ))
            :  CenteredView(
             child: Column(
             children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
