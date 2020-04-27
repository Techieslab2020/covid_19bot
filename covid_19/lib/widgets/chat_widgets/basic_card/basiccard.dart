import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/v2/message.dart';

class BasicCardWidget extends StatefulWidget{
 BasicCardWidget({ @required this.basicCard});

  final BasicCardDialogflow basicCard;

  @override
  _BasicCardWidgetState createState() => _BasicCardWidgetState();
}

class _BasicCardWidgetState extends State<BasicCardWidget> {
  @override
  Widget build(BuildContext context) {

    // return Card(
    //   margin: EdgeInsets.only(left:60),
    //         shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadiusDirectional.circular(20)),
    //         clipBehavior: Clip.antiAlias,
    //         child: Image.network(
    //         widget.basicCard.image.imageUri,
    //         width: double.maxFinite,
    //         ),
    //       );
    return Container(
    decoration: BoxDecoration(
    border: Border.all(
      color: Colors.blue,
    ),
    borderRadius: BorderRadius.circular(10.0),
  ),
       margin: EdgeInsets.only(left: 60.0) ,
       child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(widget.basicCard.image.imageUri,
                        width: double.maxFinite,
                        height: 150,
                        fit:BoxFit.fill

                    ),
                  ),
                  ListTile(
                    
                    title: Text(widget.basicCard.image.accessibilityText),
                   // subtitle: Text('Location 1'),
                  ),
                ],
              ));
   
   
  }
}