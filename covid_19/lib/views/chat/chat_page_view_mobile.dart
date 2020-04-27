import 'dart:html';
import 'package:covid_19/constants/app_colors.dart';
import 'package:covid_19/widgets/chat_widgets/basic_card/basiccard.dart';
import 'package:covid_19/widgets/chat_widgets/image_carousal/image_carousal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:covid_19/services/httpclient.dart';

import '../../widgets/chat_widgets/suggestions/suggestions.dart';
import '../../widgets/chat_widgets/linkout_suggestion/linkout_suggestion.dart';
import '../../widgets/chat_widgets/simple_message/simple_message.dart';
import '../../widgets/chat_widgets/quick_replies/quickReplies.dart';
import 'package:covid_19/locator.dart';
import 'package:covid_19/routing/route_names.dart';
import 'package:covid_19/services/navigation_service.dart';

const RoundedRectangleBorder roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft:  Radius.circular(15.0),topRight:Radius.circular(15.0)));
class ChatPageMobile extends StatefulWidget {
   
  ChatPageMobile({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ChatPageMobile createState() => new _ChatPageMobile();
}

  class _ChatPageMobile extends State<ChatPageMobile> {
  
  final List<dynamic> _messages = <dynamic>[];
  final TextEditingController _textController = new TextEditingController();
  
  BuildContext buildContext;

 void initState (){
 _messages.insert(0,ImageCarousal() );
  response("Hi");
  
   
 }

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).backgroundColor),
      child: new Container(
        decoration:
         BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(border_radis),bottomRight: Radius.circular(border_radis) )),

        
       // margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child:
         new Row(
          children: <Widget>[
            new Flexible(
              child:Padding(
                padding: EdgeInsets.all(10),
                child:new TextField(
                controller: _textController,
                onSubmitted: handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Type your query here...."),
              ) ,
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send,color: Colors.indigo[900],),
                  onPressed: () => handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  dynamic getWidgetMessage(message) {
   
    TypeMessage ms = TypeMessage(message);
       
    if (ms.platform == "ACTIONS_ON_GOOGLE") {
      
      if (ms.type == "simpleResponses") {
        return SimpleMessage(
          text: message['simpleResponses']['simpleResponses'][0]
              ['textToSpeech'],
          name: "Bot",
          type: false,
        );
      }
 
      if(ms.type =="quickReplies")
      {
        return QuickRepliesWidget(quickReplies: QuickReplies(message),clickItem: handleSubmitted,);
      }

      if (ms.type == "text") {
        if(!["", null, false, 0].contains(message['text']['text'][0].toString())){
         return SimpleMessage(
          text: message['text']['text'][0],
          name: "Bot",
          type: false,
        );
        }
      }
      if(ms.type=="basicCard")
      {

        return BasicCardWidget(basicCard: BasicCardDialogflow(message),);
      }

      if(ms.type == 'linkOutSuggestion')
      {

        return  LinkoutSuggestionWidget(linkoutsuggestion: LinkOutSuggestion(message),);
      }

      if(ms.type=='suggestions')
      {
         return SuggestionsWidget(suggestions:Suggestions(message),clickItem:handleSubmitted,);

      }
         
   }
  }
   
   void response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/credentials/cred.json").build();
  //  Dialogflow dialogflow = Dialogflow(authGoogle: authGoogle, language: Language.english);
   
 HttpClient httpClient =  HttpClient(authGoogle: authGoogle,language: Language.english);

 AIResponse response = await httpClient.makePostRequest(query);
  
    if (response.getMessage() != null && response.getMessage() != "") {
     
       if(!["", null, false, 0].contains(response.getMessage())){
        SimpleMessage message = new SimpleMessage(
        text: response.getMessage(),
        name: "Bot",
        type: false,
      );
      if (this.mounted){
      setState(() {
        if(!["", null, false, 0].contains(response.getMessage())){
        _messages.insert(0, message);
        }
      });
      }
    }
    }
    
    else 
     {
       List<dynamic> messages = response.getListMessage();
      if(messages !=null)
      {
        for (var i = 0; i < messages.length; i++) {
            
                dynamic message = getWidgetMessage(messages[i]);
                  if (message != null ) {
                    if (this.mounted){
                    setState(() {
                    _messages.insert(0, message);
                  });
                    }
                }

              }
      }
     }
 
  }

  void handleSubmitted(String text) {
    _textController.clear();
    SimpleMessage message = new SimpleMessage(
      text: text,
      name: "Rances",
      type: true,
    );
    if (this.mounted){
    setState(() {
    if(!["", null, false, 0].contains(text)){
      _messages.insert(0, message);
    }
    });
     if(!["", null, false, 0].contains(text)){
      response(text);
    }
    }
    
  }

  @override
  Widget build(BuildContext context) {
    this.buildContext=context;
      return ClipRRect(
        borderRadius: BorderRadius.circular(border_radis),
        child: Scaffold(
        appBar: new AppBar(
          
            shape: roundedRectangleBorder,
    //     shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.vertical(
    //     bottom: Radius.circular(10),
    //     top: Radius.circular(10)
    //   ),
    // ),
        backgroundColor:Colors.blue,
         flexibleSpace: Container(
          
          decoration: BoxDecoration(
             color: Colors.blue,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.pink,
              Colors.red,
              Colors.orange,
              //Colors.yellow
            ])  
      ),
         ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: new Text("Covid Health Assistant"),
        actions: <Widget>[
    //        IconButton(
    //   icon: Icon(
    //     Icons.more_vert,
    //     color: Colors.white,
    //   ),
    //   onPressed: () {
    //     setState(() {
    //        _messages.clear();
    //       // Response("hi");
    //         _showPopupMenu(context);
    //     });
     
       
    //   },
    // ),
    IconButton(
      icon: Icon(
        Icons.people,
        color: Colors.white,
      ),
      onPressed: () {
       
     locator<NavigationService>().navigateTo(AboutRoute);
       
      },
    ),
      IconButton(
      icon: Icon(
        Icons.refresh,
        color: Colors.white,
      ),
      onPressed: () {
        if (this.mounted){
        setState(() {
              // Response("hi");
           _showDialog(context);
           
        });
        }
       
      },
    ),
    //  IconButton(
    //   icon: Icon(
    //     Icons.close,
    //     color: Colors.white,
    //   ),
    //   onPressed: () {
    //     _showDialog(context);
       
    //   },
    // ),
    
  ],
      ),
       body:new Container(
         
         decoration: BoxDecoration(
         border: Border.all(),
         color: Colors.white,
  ),
  
       child:  new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
              new Flexible(
            child: Scrollbar(
            child:new ListView.builder(
            padding: new EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).accentColor),
          child: _buildTextComposer(),
        ),
      ]),
    )));
  }

   
  void _showDialog(BuildContext context) {
        
    // flutter defined function
    showDialog(
      context: context,
      builder: (context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Chat History"),
          content: new Text("Do you want to clear chat History??"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Yes"),
              onPressed: () {
               locator<NavigationService>().navigateTo(HomeRoute);
               
                 _messages.clear();
                 Navigator.of(context).pop();
                 response("initializeBot");

              },
            )
          ],
        );
      },
    );

   
 }
 

 }
 

