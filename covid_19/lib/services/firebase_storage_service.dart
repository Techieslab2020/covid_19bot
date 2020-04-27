import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
class FireStorageService extends ChangeNotifier {
FireStorageService() {
    initializeApp(
        apiKey: "AIzaSyANFRNVH04DZj78PrgfcsSZMcTq9SzVVQI",
        authDomain: "flow-2-mweipw.firebaseapp.com",
        databaseURL: "https://flow-2-mweipw.firebaseio.com",
        projectId: "flow-2-mweipw",
        storageBucket: "flow-2-mweipw.appspot.com",
        messagingSenderId: "545353679773");
    //appId: "1:545353679773:web:d4d9ec94f0d488d8b36574");
  }
static Future<dynamic> loadFromStorage(BuildContext context, String image) async {
    var url = await storage().ref(image).getDownloadURL();
    return url;
  }
}