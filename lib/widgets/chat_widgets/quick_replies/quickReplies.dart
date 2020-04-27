import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dialogflow/v2/message.dart';

class QuickRepliesWidget extends StatefulWidget {
  QuickRepliesWidget({this.quickReplies,@required this.clickItem});

  final Function clickItem;
  final QuickReplies quickReplies;
  
  

  @override
  _QuickRepliesWidget createState() => _QuickRepliesWidget();
}

class _QuickRepliesWidget extends State<QuickRepliesWidget> {
    List<Widget> listItems() {
    List<Widget> items = [];

    for (var i = 0; i < widget.quickReplies.quickReplies.length; i++) {
                items.add(new  Container(
                    margin: EdgeInsets.only(right: 7.0),
                    child :ActionChip(
                    backgroundColor: Colors.white,
                    label: new Text(widget.quickReplies.quickReplies[i],style: TextStyle(color: Colors.lightBlue[900]),),
                    shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),),
                    onPressed:(){widget.clickItem(widget.quickReplies.quickReplies[i]);},
                    // update board with selection
                     )
              
          )
          );
           
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      // child: new SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child:
      //   Column(children:<Widget> [
      //                 Row(children: listItems())
      //                 ]),
      // ),
      // child: GridView.count(crossAxisCount: 3,
      //  scrollDirection: Axis.vertical,
      //  shrinkWrap: true,
      // children:listItems()),
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
