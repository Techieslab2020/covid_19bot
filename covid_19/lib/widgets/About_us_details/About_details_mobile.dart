import 'package:covid_19/routing/route_names.dart';

import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:covid_19/datamodels/About_us_Model.dart';
import 'package:covid_19/styles/text_styles.dart';
import 'package:covid_19/locator.dart';
import 'package:covid_19/services/navigation_service.dart';

class AboutDetailsMobile extends ProviderWidget<AboutusModel> {
  @override
  Widget build(BuildContext context, AboutusModel details) {
    return ResponsiveBuilder(
      
      builder: (context, sizingInformation) =>Column(
        children: <Widget>[
          Row(
    children: <Widget>[
       IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
             onPressed:(){
               locator<NavigationService>().navigateTo(HomeRoute);
             } ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
      ),
    ),
            
  ],
),
     
          SizedBox(
            height: 40,
          ),
          Text(
            details.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType),
          ),
        ],
      ),
    );
  }
}
