import 'package:flutter/material.dart';
import 'package:flutter_app/simple_coverflow.dart';

class FifthScreen extends StatelessWidget {
  static List<Container> data = [
    new Container(color: Colors.orange, child: Content(),),
    new Container(color: Colors.purple, child: Content(),),
    new Container(color: Colors.amber, child: Content(),),
    new Container(color: Colors.deepPurple, child: Content(),),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Coverflow Demo',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Coverflow Demo'),
          ),
          body: new CoverFlow(itemBuilder: widgetBuilder,
              dismissedCallback: disposeDismissed)
      ),
    );
  }

  Widget widgetBuilder(BuildContext context, int index) {
    if (data.length == 0) {
      return new Container();
    } else {
      return data[index % data.length];
    }
  }

  disposeDismissed(int item, DismissDirection direction) {
    data.removeAt(item % data.length);
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Dr. Michelle Luxom',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'MS Psychology, Therapist',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('100'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.phone, 'CONTACT'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        'Dr. Luxom has 10 years of experience in xyz. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.network(
              'https://housecalldoctor.com.au/wp-content/uploads/2015/12/doctor-image.jpg',
              width: 100.0,
              height: 250.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}