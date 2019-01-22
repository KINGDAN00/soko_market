import 'package:flutter/material.dart';
import 'package:soko/principal.dart';

class Menu extends StatelessWidget {
  final String username;
  final String email;

  Menu({this.username, this.email});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              this.username,
            ),
            accountEmail: new Text(
              this.email,
            ),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.purple,
              child: new Text(this.username.substring(0, 1).toUpperCase()),
            ),
          ),
          new ListTile(
            title: new Text("Acceuil"),
            leading: new Icon(
                Icons.home,
                color: Colors.blue,
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(
              new MaterialPageRoute(builder: (BuildContext context)=>new Principal()));
            },
          ),
          new ListTile(
            title: new Text("Ajouter un Article"),
            leading: new Icon(
                Icons.add_shopping_cart,
                color: Colors.blue),
          ),
          new ListTile(
            title: new Text("Panier"),
            leading: new Icon(
                Icons.shopping_cart,
                color: Colors.blue),
          ),
          new ListTile(
            title: new Text("Compte"),
            leading: new Icon(
                Icons.account_circle,
                color: Colors.blue),
          ),
          new Divider(),
          new ListTile(
            title: new Text("Close"),
            leading: new Icon(
                Icons.close,
                color: Colors.blue),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
