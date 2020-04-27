import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:covid_19/datamodels/About_us_Model.dart';
import 'package:covid_19/styles/text_styles.dart';

class AboutDetailsDesktop extends ProviderWidget<AboutusModel> {
  @override
  Widget build(BuildContext context, AboutusModel details) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Text(
              details.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
     );
  }
}
