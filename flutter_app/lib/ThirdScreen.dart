import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(

        theme: new ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
          body: ListView.builder(
            padding: new EdgeInsets.all(18.0),
            itemCount: 1,
            itemBuilder: (context, rowNumber) {
              return new Column(
                children: <Widget>[

                  ListTile(
                    leading: Padding(padding: new EdgeInsets.all(10.0),
                        child: Image.network(
                          "https://cdn2.collective-evolution.com/assets/uploads/2017/11/Postpartum-Depression-woman-baby-RM-722x406.jpg",
                          width: 150.0, height: 150.0,
                        )),
                    title: Text('Emotionally Focussed',
                        style: new TextStyle(fontWeight: FontWeight.bold,)),
                    subtitle: Text(
                        "Description: Support group for mothers feelings of sad and anxious"),
                  ),
                  ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text('October 2, 2018'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('6pm-9pm'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                        'FabYOUlicious Therapy Place, 1013 Gran Ave, Mountain View, California 12345'),
                  ),
                  new Divider(color: Colors.pink,),

                  ListTile(
                    leading: Padding(padding: new EdgeInsets.all(14.0),
                        child: Image.network(
                          "http://www.visioneach.com/wp-content/uploads/2018/07/image-1-1024x682.jpeg",
                          width: 150.0, height: 150.0,
                        )),
                    title: Text('Joy After Heartbreak',
                        style: new TextStyle(fontWeight: FontWeight.bold,)),
                    subtitle: Text(
                        "Description: Open to men and women wanting to support each other"),
                  ),
                  ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text('October 2, 2018'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('9:00am-12:00pm'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                        'FabYOUlicious Therapy Place, 1013 Gran Ave, Mountain View, California 12345'),
                  ),
                  new Divider(color: Colors.pink,),

                  ListTile(
                    leading: Padding(padding: new EdgeInsets.all(10.0),
                        child: Image.network(
                          "http://saludjinni.com/wp-content/uploads/2018/08/menopausia.jpg",
                          width: 150.0, height: 150.0,
                        )),
                    title: Text('Change of Life for Women After Menopause',
                        style: new TextStyle(fontWeight: FontWeight.bold,)),
                    subtitle: Text(
                        "Description: For women go through physical and emotional changes after menopause"),
                  ),
                  ListTile(
                    leading: Icon(Icons.date_range),
                    title: Text('October 9, 2018'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('6:30pm-7:30pm'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                        'FabYOUlicious Therapy Place, 1013 Gran Ave, Mountain View, California 12345'),
                  ),
                ],
              );
            },
//
          ),
        ),
      );
  }
}