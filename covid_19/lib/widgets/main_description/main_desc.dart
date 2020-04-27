import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:covid_19/styles/text_styles.dart';

class MainDescription extends StatelessWidget {
  const MainDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;
              
       var margin =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ?const EdgeInsets.only(right: 30.0)
                : const EdgeInsets.only(right:0.0);
        var crossAxisAlignment = sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center;
        var maindesc = sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ?Stack(
             children:[ 
             Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'COVID HEALTH\nASSISTANT',
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'To serve reliable information',
                style: subtitleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
            ] 
            ),
            Align(
            alignment: Alignment.bottomCenter,
                child:Container(
                   margin: EdgeInsets.only(bottom:25.0),
                  child:
                 RichText(
                text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
              TextSpan(text: '\nDisclaimer:', style: disclaimerTextStyle(sizingInformation.deviceScreenType)),
               TextSpan(text: '\nThis chat-bot is not substitute for professional medical advice, diagnosis, or treatment. Always consult a medical professional for any serious symptoms or emergencies. Central Helpline Number for corona-virus:- ',style:disclaimerTextStyle(sizingInformation.deviceScreenType)),
                TextSpan(text: '+91-11-23978046', style: disclaimerTextStyle(sizingInformation.deviceScreenType)),
              ],
              ),
              )
            )
                 ) ])
         : Center(
            child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'COVID HEALTH\nASSISTANT',
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'To serve reliable information',
                style: subtitleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
            

             RichText(
                text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
               TextSpan(text: '\nDisclaimer:', style: disclaimerboldTextStyle(sizingInformation.deviceScreenType)),
               TextSpan(text: '\nThis chat-bot is not substitute for professional medical advice, diagnosis, or treatment. Always consult a medical professional for any serious symptoms or emergencies. Central Helpline Number for corona-virus:- ',style:disclaimerTextStyle(sizingInformation.deviceScreenType)),
                TextSpan(text: '+91-11-23978046', style: disclaimerboldTextStyle(sizingInformation.deviceScreenType)),
              ],
              ),
              )
           ],
          ),
                );

        return Container(
          margin:  margin,
          width: 700,
           child:maindesc
        );
        },
        );
      
    
  }
}
