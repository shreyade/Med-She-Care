import 'package:flutter/material.dart';
import 'package:flutter_app/FifthScreen.dart';
import 'package:flutter_app/FourthScreen.dart';
import 'package:flutter_app/ThirdScreen.dart';

class secondScreen extends StatelessWidget {
  Widget buildRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        GestureDetector(
          child: const Icon(Icons.person),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new secondScreen()),
            );
          },
        ),
        GestureDetector(
          child: const Icon(Icons.message),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new secondScreen()),
            );
          },
        ),

        GestureDetector(
          child: const Icon(Icons.calendar_today),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new secondScreen()),

            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Med~She~Care'),
        ),
      body: Center(
//        padding: const EdgeInsets.all(32.0),
//    child: IntrinsicHeight(
        child: new Column(
          children: <Widget>[
            new Text('Welcome'),
            GestureDetector(
              child: Text("Join support group"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new FourthScreen()));
              },
            ),
            GestureDetector(
              child: Text("Find a professional"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new FifthScreen()),
                );
              },
            ),
            GestureDetector(
              child: Text("Upcoming meetups"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new ThirdScreen()),
                );
              },
            ),
            buildRow(context),
          ],
        ),
      ),
    );
  }
}

Widget build(BuildContext context) {
  return new Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('Med~She~Care'), //widget.title),
    ),
    body: new Theme(
      data: new ThemeData(
          brightness: Brightness.dark,
          inputDecorationTheme: new InputDecorationTheme(
            // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
            labelStyle: new TextStyle(color: Colors.black, fontSize: 25.0),
          )),
      isMaterialAppTheme: true,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/girl.jpg", width: 350.0, height: 350.0),

        ],
      ),
    ),
  );
}