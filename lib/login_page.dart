import 'package:flutter/material.dart';
import 'package:remo/home_page.dart';

class LoginPage extends StatelessWidget{
  static String tag = 'login-page';
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30.0,
        child: Image.asset('images/logo.png'),
      ),
    );

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: TextEditingController(text: 'example.tugas@gmail.com'),
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextField(
      autofocus: false,
      controller: TextEditingController(text: 'hello password'),
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.blue.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlue,
          child: Text('Log in',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
    final forgotLabel = FlatButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.black),
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 5.0),
            Text('REMO\n '
                'Rental Mobil',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.black,),
            ),
            SizedBox(height: 20.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}