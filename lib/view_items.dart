import 'package:flutter/material.dart';
import 'package:soko/detail/item.dart';

class View_items extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String desciption;

  View_items({this.name, this.price, this.imagePath, this.desciption});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
        child: Container(
          height: 150.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 150.0,
                child: new Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
//                decoration: BoxDecoration(
//                    image: DecorationImage(
//                        image: new Image.asset(name), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        this.name,
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Material(
                          elevation: 2.0,
                            borderRadius: BorderRadius.circular(20.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Plus'
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.red,
                                    )
                                  ],
                          ),
                              ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:10.0),
                  ),
                  Container(
                    width: 175.0,
                    child: Text(
                      this.desciption,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12.0,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 50.0,
                          color: Theme.of(context).buttonColor,
                          child: Center(
                            child: Text(
                              price,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0),
                        ),
                        Container(
                          height: 40.0,
                          width: 100.0,
                          color: Theme.of(context).buttonColor,
                          child: Center(
                            child: Icon(
                             Icons.add_shopping_cart,
                             color: Colors.green
                            ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
