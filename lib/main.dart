import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobileBanking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

   return new SplashScreen(
     seconds: 5,
     navigateAfterSeconds: AfterSplash(),
     title: new Text('Nous sommes heureux de vous revoir parmis nous',
       style: new TextStyle(
         fontFamily: 'Raleway',
         fontSize: 20,

         color: Colors.white

       ),
       textAlign: TextAlign.center
     ),
     image: new Image.asset('assets/images/logo.png'),
     backgroundColor: Color(0xFFE60028),
     styleTextUnderTheLoader: new TextStyle(),
     photoSize: 100.0,
     onClick: () => print('Veuillez patienter'),
     loaderColor: Colors.white,


   );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Welcome In SplashScreen Package"),
          automaticallyImplyLeading: false
      ),
      body: new Center(
        child: new Text("Done!",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),

      ),
    );
  }
}