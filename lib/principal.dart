import 'package:flutter/material.dart';
import 'package:soko/menu/menu.dart';
import 'package:soko/toolbar.dart';
import 'package:soko/view_items.dart' show View_items;


class Principal extends StatefulWidget {
  @override
  _Principal createState() => _Principal();
}

class _Principal extends State<Principal> {
  final List<View_items> items = new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'Home',
          style: TextStyle(fontFamily: 'Raleway', color: Colors.white),
        ),
      ),
      drawer: new Menu(username: 'dom\'s',email: 'domsbuhendwa2@gmail.com',),
      body: _body(context),

    );
  }
  _body(BuildContext context){
      return Column(
        children: <Widget>[
         _barSearch(context),
        getBody()
        ],
      );
  }
  showLoadingDialog() {
    return items.length == 0;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }

  getProgressDialog() {
    return Center(child: CircularProgressIndicator());
  }

  getListView() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length, itemBuilder: _listBuilder)
    );
  }

  loadData() async {
    String path;
    setState(() {
      for (int x = 0; x < 100; x++) {
        if( x < 20)
          path = 'assets/images/3.jpg';
        else if(x > 20 && x < 40)
          path = 'assets/images/4.jpg';
        else if(x > 40 && x < 60)
          path = 'assets/images/5.jpg';
        else if(x > 60)
          path = 'assets/images/6.jpg';
        View_items value = new View_items(
            name: 'Chaussure',
            imagePath: path,
            price: '20\$',
            desciption: 'Chaussure de haute qualite fabrique aux etats unis, produit aux etats unis a un prix record');
        items.add(value);
      }
    });
  }

  Widget _listBuilder(BuildContext context, int index) {
    return items[index];
  }

  _barSearch(BuildContext context) {
    return Stack(
      children: <Widget>[
       Container(
            height: 200.0,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0,),
                Text(
                  'Soko',
                  style: TextStyle(fontSize: 26.0,color: Colors.white),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    child: TextField(
                      controller: TextEditingController(text :'Recheche dans Soko'),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(Icons.search, color: Colors.black,),
                          ),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                )
              ],
            ),
        )
      ],
    );
  }
}
