import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Map<int, Color> blue =
  {
    50:Color.fromRGBO(144, 173, 198, .1),
    100:Color.fromRGBO(144, 173, 198, .2),
    200:Color.fromRGBO(144, 173, 198, .3),
    300:Color.fromRGBO(144, 173, 198, .4),
    400:Color.fromRGBO(144, 173, 198, .5),
    500:Color.fromRGBO(144, 173, 198, .6),
    600:Color.fromRGBO(144, 173, 198, .7),
    700:Color.fromRGBO(144, 173, 198, .8),
    800:Color.fromRGBO(144, 173, 198, .9),
    900:Color.fromRGBO(144, 173, 198, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'synqify',
      theme: ThemeData(
        scaffoldBackgroundColor: MaterialColor(0xFF90ADC6, blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'synqify'),
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                  color: Color(0xFFFAD02C),
                  fontSize: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
