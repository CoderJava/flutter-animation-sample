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
  double width = 200;
  double height = 200;
  var colorContainer = Colors.blue;
  double radius = 16;
  var isSmall = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              width: width,
              height: height,
              curve: Curves.bounceInOut,
              decoration: BoxDecoration(
                color: colorContainer,
                borderRadius: BorderRadius.all(
                  Radius.circular(radius),
                ),
              ),
              duration: Duration(
                seconds: 2,
              ),
            ),
            RaisedButton(
              child: Text('Animated It'),
              onPressed: () {
                setState(() {
                  if (isSmall) {
                    isSmall = false;
                    width = 200;
                    height = 200;
                    colorContainer = Colors.blue;
                    radius = 16;
                  } else {
                    isSmall = true;
                    width = 100;
                    height = 100;
                    colorContainer = Colors.red;
                    radius = 100;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
