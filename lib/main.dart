import 'package:flutter/material.dart';
import 'package:soko/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soko',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Raleway',
          buttonColor: Colors.purple,
      ),
      home: MyHomePage(title: 'home',),
      routes : <String, WidgetBuilder>{
        '/home':(BuildContext context)=>Principal()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(seconds: 5), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Stack(
        children: <Widget>[
          new Container(
              width: double.infinity,
              color: Colors.deepPurple,
              child : new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child : new FadeTransition(
                      opacity: curve,
                      child:
                     new Text(
                      'Soko',
                      style: TextStyle(fontSize: 28.0,color: Colors.white),
                    ),
                    )
                  ),
                  new Text(
                    'Vender et Acheter vos Articles',
                    style: TextStyle(fontSize: 12.0,color: Colors.white),
                  ),
                  new MaterialButton(
                    onPressed:()=>(
//                        controller.forward()
                        Navigator.of(context).pushReplacementNamed('/home')
                    ),
                    child: new Text(
                      'Lancer'
                    ),
                    textColor: Colors.white,
                  )
                ],
              )
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
