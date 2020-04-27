import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:covid_19/datamodels/About_us_Model.dart';
import 'package:covid_19/widgets/About_us_details/About_details_desktop.dart';
import 'package:covid_19/widgets/About_us_details/About_details_mobile.dart';

class AboutDetails extends StatelessWidget {
  final AboutusModel details;
  const AboutDetails({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout(
        desktop: AboutDetailsDesktop(),
        mobile: AboutDetailsMobile(),
        
      ),
    );
  }
}
