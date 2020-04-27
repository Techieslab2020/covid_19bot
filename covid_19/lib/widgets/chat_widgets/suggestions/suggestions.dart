import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dialogflow/v2/message.dart';
import '../../../extensions/hover_extensions.dart';

class SuggestionsWidget extends StatefulWidget {
  SuggestionsWidget({this.suggestions, @required this.clickItem});

  final Function clickItem;
  final Suggestions suggestions;
  
   @override
  _SuggestionsWidget createState() => _SuggestionsWidget();
}

class _SuggestionsWidget extends State<SuggestionsWidget> {
    List<Widget> listItems() {
    List<Widget> items = [];

    for (var i = 0; i < widget.suggestions.suggestionlist.length; i++) {
                items.add(new  Container(
                    margin: EdgeInsets.only(right: 7.0),
                    child :ActionChip(
                    backgroundColor: Colors.white,
                    label: new Text(widget.suggestions.suggestionlist[i].title,style: TextStyle(color:Colors.lightBlue[900]),),
                    shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),),
                    onPressed:(){widget.clickItem(widget.suggestions.suggestionlist[i].title);},
                    // update board with selection
                     ).showCursorOnHover
              
          )
          );
           
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return widget.suggestions.suggestionlist==null?ProgressIndicator :new Container(
        child:Container(
        margin: EdgeInsets.only(left: 60.0) ,
        child:Wrap(        
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: listItems(),
      ), )
       
    );
  }
}
