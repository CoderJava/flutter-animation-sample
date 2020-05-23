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
        title: Text('Animated Cross Fade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              secondChild: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              crossFadeState: isToggle ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1),
            ),
            RaisedButton(
              child: Text('Animated It'),
              onPressed: () {
                setState(() {
                  isToggle = !isToggle;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
