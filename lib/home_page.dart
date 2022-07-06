import 'package:flutter/material.dart';
import 'package:remo/login_page.dart';
import 'package:remo/location_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final profile = Hero(
        tag: 'hero',
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
        ),
    );

    final nama = Padding(padding: EdgeInsets.all(5.0),
        child: Text(
        'Salman Alfarissy\n'
        'salman.alfarissy26@gmail.com',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20.0, color: Colors.black,),
    ),
    );

    final content = Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.car_rental, color: Colors.grey, size: 58),
                        Text('Rental Mobil', style: TextStyle(color: Colors.black45,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                    onPressed: () { Navigator.of(context).pushNamed(LocationPage.tag); },
                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.logout, color: Colors.grey, size: 58),
                        Text('Log out', style: TextStyle(color: Colors.black45,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                    onPressed: () { Navigator.of(context).pushNamed(LoginPage.tag); },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


    final body = Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
    gradient: LinearGradient(colors: [
      Colors.lightBlue,
      Colors.blue
    ]),
    ),
    child: Column(
    children: <Widget>[
      profile,
      nama,
      content,
    ],
    ),
    );

    return Scaffold(
    body: body,
    );
  }

}