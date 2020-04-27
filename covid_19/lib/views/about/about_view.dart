import 'package:covid_19/datamodels/About_us_Model.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/widgets/About_us_details/about_details.dart';


class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
    //    decoration: BoxDecoration(
    //   gradient: LinearGradient(
    // begin: Alignment.topLeft,
    // end: Alignment.bottomRight,
    // colors: [Colors.cyan[400],
    //  Colors.indigo[900]])),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
            
          SizedBox(
            height: 100,
          ),
          AboutDetails(
            details: AboutusModel(
              title: 'About Us',
              description:
                  'Covid Health Assistant is a virtual health assistant.\nObjective of Covid Health Assistant is to provide a platform for the public to get reliable information regarding COVID-19 amid excess of fake news.\nWe believe avoiding fake information is one of the key need to avoid panic during these stage of disaster.\nCovid Health Assistant is build on data collected for government domains and reowned world health institutions.',
            ),
          ),
         
          // model.episodes == null
          //     ? CircularProgressIndicator()
          //     : EpisodesList(episodes: model.episodes),
        ],
      ),
    );
  }
}
