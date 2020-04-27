import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dialogflow/v2/message.dart';
import 'dart:js' as js;

class LinkoutSuggestionWidget extends StatefulWidget {
  LinkoutSuggestionWidget({this.linkoutsuggestion});

  //final Function clickItem;
  final LinkOutSuggestion linkoutsuggestion;
  
  

  @override
  _LinkoutSuggestionWidget createState() => _LinkoutSuggestionWidget();
}

class _LinkoutSuggestionWidget extends State<LinkoutSuggestionWidget> {
   
  
  @override
  Widget build(BuildContext context) {
    return new Container(
        child:Container(
        margin: EdgeInsets.only(left: 60.0) ,
        child:ActionChip(
                    backgroundColor: Colors.lightBlue[900],
                    elevation: 2.0,
                    label: new Text(widget.linkoutsuggestion.destinationName,style: TextStyle(color: Colors.white),),
                    shape: const RoundedRectangleBorder(
                  
                   // side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    onPressed:(){
                      js.context.callMethod("open", [widget.linkoutsuggestion.uri]);
                    }
                     
                     )
                    
      ), 
       
    );
  }
}
