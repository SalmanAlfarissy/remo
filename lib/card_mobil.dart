import 'package:flutter/material.dart';
import 'package:remo/detail_mobil.dart';
import 'package:remo/model/data_mobil.dart';

class CardMobil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => DetailMobil(
                name: allCars.cars[i].name,
                brand: allCars.cars[i].brand,
                fuel: allCars.cars[i].fuel,
                price: allCars.cars[i].price,
                imageAsset: allCars.cars[i].imageAsset,
                gearbox: allCars.cars[i].gearbox,
                color: allCars.cars[i].color,
              ),
            ),
            );
          },
          child: Container(
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 10, bottom: i.isEven ? 10 : 0),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 5, spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Hero(
                      tag: allCars.cars[i].name,
                      child: Image.network(allCars.cars[i].imageAsset)),
                  Text(
                    allCars.cars[i].name,
                    style: TextStyle(fontSize: 15,
                    ),
                  ),
                  Text((allCars.cars[i].price).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('/month')
                ],
              )),
        ),
      ),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
    );
  }
}