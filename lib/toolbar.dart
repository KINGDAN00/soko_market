import 'package:flutter/material.dart';

  menuBar({String title, bool asAppBar}){
    return AppBar(
      leading: new IconButton(
          icon: new Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            //TODO
          }),
      title: new Text(
        title,
        style: TextStyle(
            fontSize: 26.0, fontFamily: 'Raleway', color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
}
