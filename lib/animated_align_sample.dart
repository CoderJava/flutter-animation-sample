import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Align'),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedAlign(
            alignment: isToggle ? Alignment.topCenter : Alignment.bottomCenter,
            duration: Duration(seconds: 2),
            child: Text('Hello World'),
          ),
          Align(
            child: RaisedButton(
              child: Text('Animated It'),
              onPressed: () {
                setState(() {
                  isToggle = !isToggle;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
