import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/secondScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.purple),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
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
            Image.asset("assets/logo.png", width: 350.0, height: 350.0),

            buildContainerWithForm(context),
          ],
        ),
      ),
    );
  }

  Widget buildContainerWithForm(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(40.0),
      child: new Form(
        autovalidate: true,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new TextFormField(
              decoration: new InputDecoration(
                  labelText: "Enter Email", fillColor: Colors.white),
              keyboardType: TextInputType.emailAddress,
            ),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "Enter Password",
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 60.0),
            ),
            RaisedButton(
              //                        height: 50.0,
              //                        minWidth: 150.0,
                color: Colors.purple,
                splashColor: Colors.white,
                textColor: Colors.white,

                child: new Icon(FontAwesomeIcons.signInAlt),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new secondScreen()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
//  Widget buildRaisedButton(BuildContext context) {
//    return RaisedButton(
////                        height: 50.0,
////                        minWidth: 150.0,
//        color: Colors.deepPurple,
//        splashColor: Colors.pink,
//        textColor: Colors.white,
//        child: new Icon(FontAwesomeIcons.signInAlt),
//        onPressed: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => new FirstScreen()),
//          );
//        });
//  }
//}
