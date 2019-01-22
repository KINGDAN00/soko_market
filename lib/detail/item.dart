import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:soko/dialogs/add_toShop.dart';
import 'package:soko/menu/menu.dart';

class ItemDetail extends StatelessWidget {
  final String keys;
  final String name;
  final String price;

  ItemDetail({this.keys, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _menuBar(),
      drawer: new Menu(username: 'Dom\'s', email: 'domsbuhendwa2@gmail.com'),
      body: _body(context),
    );
  }

  _menuBar() {
    return AppBar(
      title: new Text(
        name,
        style: TextStyle(
            fontSize: 26.0, fontFamily: 'Raleway', color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
    );
  }

  _body(BuildContext context) {
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
        Container(
          width: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: new AssetImage(
                  'assets/images/3.jpg',
                ),
                fit: BoxFit.fill),
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        IconButton(
          icon: new Icon(Icons.add_shopping_cart),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => (new Add_toShop(
                    name: this.name, price: this.price, itemKey: this.keys)));
          },
        )
      ],
    );
  }
}
