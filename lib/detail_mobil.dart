import 'package:flutter/material.dart';
import 'package:remo/spek_mobil.dart';

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailMobil extends StatelessWidget {
  final String name;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String imageAsset;

  DetailMobil(
      {required this.name,
        required this.price,
        required this.color,
        required this.gearbox,
        required this.fuel,
        required this.brand,
        required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("REMO"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
            ),
            ),
            Text(
              brand,
              style: TextStyle(fontSize: 15,
              ),
            ),
            Hero(tag: name, child: Image.network(imageAsset)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpekMobil(
                  name: '12 Month',
                  price: price * 12,
                  name2: 'IDR',
                ),
                SpekMobil(
                  name: '6 Month',
                  price: price * 6,
                  name2: 'IDR',
                ),
                SpekMobil(
                  name: '1 Month',
                  price: price * 1,
                  name2: 'IDR',
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              'SPECIFICATIONS',
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpekMobil(
                  name: 'Color',
                  name2: color,
                ),
                SpekMobil(
                  name: 'Gearbox',
                  name2: gearbox,
                ),
                SpekMobil(
                  name: 'Fuel',
                  name2: fuel,
                )
              ],
            ),
            SizedBox(height: 10),
            RaisedButton(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              onPressed: (){
                _showSimpleDialog(context);
              },
              padding: EdgeInsets.all(10.0),
              color: Colors.blueAccent,
              child: Text(
                'Rental',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ),
      )
    );
  }
}