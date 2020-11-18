import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Map<int, Color> color =
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
        primarySwatch: MaterialColor(0xFF90ADC6, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'synqify home'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
