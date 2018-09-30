import 'package:flutter/material.dart';
import 'package:flutter_app/simple_coverflow.dart';

class FourthScreen extends StatelessWidget {
  static List<Container> data = [
    new Container(color: Colors.orange, child: Content(),),
    new Container(color: Colors.purple, child: Content(),),
    new Container(color: Colors.amber, child: Content(),),
    new Container(color: Colors.purple, child: Content(),),
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
                    'Emotionally Focussed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'FabYOUlicious Therapy Place, 1013 Gran Ave, Mountain View, California 12345',
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
          Text('41'),
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
          buildButtonColumn(Icons.add, 'JOIN'),
          buildButtonColumn(Icons.location_on, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        What many women don’t plan for is the emotional changes involved. As recent media reports have depicted, postpartum depression (PPD) affects many women, yet few know about how to recognize the symptoms and get help. That same lack of knowledge holds true for health care professionals as well—in fact, the literature demonstrates that health care, childbirth and social services professional women relate how stunned they were that they could not recognize the symptoms in themselves
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.network(
              'https://cdn2.collective-evolution.com/assets/uploads/2017/11/Postpartum-Depression-woman-baby-RM-722x406.jpg',
              width: 600.0,
              height: 200.0,
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