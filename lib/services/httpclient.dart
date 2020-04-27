import 'dart:io';

import 'package:flutter_dialogflow/v2/auth_google.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'dart:convert';

class HttpClient{
 
 final AuthGoogle authGoogle;
  final String language;

  const HttpClient({@required this.authGoogle, this.language="en"});
  dynamic  makePostRequest(String query) async {
  // set up POST request arguments
  String url = 'https://dialogflow.googleapis.com/v2beta1/projects/flow-2-mweipw/agent/sessions/123456789:detectIntent';
  Map<String, String> headers = {"Content-type": "application/json",
   HttpHeaders.authorizationHeader: "Bearer ${authGoogle.getToken}"};


  String json = '{"queryInput":{"text":{"text":"$query","language_code":"$language"} },"queryParams":{"knowledgeBaseNames":["projects/${authGoogle.getProjectId}/knowledgeBases/MTY2NjcyMTc0ODk1MDI5Mjg4OTY"]}}';
  // make POST request
  Response response = await post(url, headers: headers, body: json);
  // check the status code for the result
  //int statusCode = response.statusCode;
  // this API passes back the id of the new item added to the body
  String body = response.body;
  

  return AIResponse(body:jsonDecode(body));
}
 









}