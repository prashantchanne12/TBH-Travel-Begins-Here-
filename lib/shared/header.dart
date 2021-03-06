import 'package:flutter/material.dart';
import 'package:nishant/services/authentication.dart';
Authentication _auth=Authentication();
header(context,{bool isAppTitle=false,String titleText, removeback=false,bool isLogout=false}) {
  return AppBar(
    title: Text(isAppTitle?'Home':titleText,
    style: TextStyle(
      fontFamily: isAppTitle?'Signatra':'',
      fontSize: isAppTitle?50:22,
      color: Colors.white
    ),
    ),
    automaticallyImplyLeading: removeback?false:true,
    backgroundColor: Colors.pink[600],
    // LinearGradient(
    //     begin: Alignment.topLeft,
    //     end: Alignment.bottomRight,
    //     colors: [
    //       Theme.of(context).accentColor,
    //       Theme.of(context).primaryColor,
    //     ],
    //   ),
    actions: <Widget>[
      isLogout?RaisedButton.icon(
        color: Colors.pink,
        onPressed: ()=>_auth.signOut(),
        label: Text('Logout'),
        icon: Icon(Icons.person),
      ):Text('')
    ],
  );
}
