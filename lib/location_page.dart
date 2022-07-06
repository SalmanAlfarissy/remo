import 'package:flutter/material.dart';
import 'package:remo/home_page.dart';
import 'package:remo/list_screen.dart';

class LocationPage extends StatelessWidget{
  static String tag = 'location-page';

  @override
  Widget build(BuildContext context) {
    final body = SingleChildScrollView(
      child: Column(
        children: <Widget>[
          new Container(
            child: Image.asset('images/map.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(50.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                    hintText: 'Masukan Lokasi Anda Sekarang',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: RaisedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(ListScreen.tag);
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text(
                'Search',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
    
    return Scaffold(
      body: body,
    );
  }

}