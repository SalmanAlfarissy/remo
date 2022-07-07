import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remo/model/data_mobil.dart';

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

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');
class DetailMobil extends StatelessWidget {
  final DataMobil mobil;

  const DetailMobil({Key? key, required this.mobil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(mobil: mobil);
        } else {
          return DetailMobilePage(mobil: mobil);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final DataMobil mobil;

  const DetailMobilePage({Key? key, required this.mobil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hrg12 = mobil.price * 12;
    double hrg6 = mobil.price * 6;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                mobil.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      Image.asset(mobil.imageAsset),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              const FavoriteButton(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: mobil.imageUrl.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text(
                        'Lama Rental',
                        style: informationTextStyle,
                      ),
                      Text("12 Month"),
                      Text("6 Month"),
                      Text("1 Month"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on_rounded),
                      const SizedBox(height: 8.0),
                      Text(
                        'Harga',
                        style: informationTextStyle,
                      ),

                      Text(hrg12.toString() +" IDR"),
                      Text(hrg6.toString() +" IDR"),
                      Text(mobil.price.toString() +" IDR"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Specification',
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Staatliches',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const Icon(Icons.car_rental_rounded),
                              const SizedBox(height: 8.0),
                              Text(
                                'Brand',
                                style: informationTextStyle,
                              ),
                              Text(mobil.brand),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Icon(Icons.color_lens_rounded),
                              const SizedBox(height: 8.0),
                              Text(
                                'Color',
                                style: informationTextStyle,
                              ),
                              Text(mobil.color),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Icon(Icons.car_repair_rounded),
                              const SizedBox(height: 8.0),
                              Text(
                                'Gearbox',
                                style: informationTextStyle,
                              ),
                              Text(mobil.gearbox.toString()),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Icon(Icons.local_gas_station_rounded),
                              const SizedBox(height: 8.0),
                              Text(
                                'Fuel',
                                style: informationTextStyle,
                              ),
                              Text(mobil.fuel.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
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
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final DataMobil mobil;
  DetailWebPage({Key? key, required this.mobil}) : super(key: key);
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double hrg12 = mobil.price * 12;
    double hrg6 = mobil.price * 6;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'REMO',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            children: [
                              const FavoriteButton(),
                            ],
                          ),
                          ClipRRect(
                            child: Image.asset(mobil.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: mobil.imageUrl.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  mobil.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        const Icon(Icons.calendar_today),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          'Lama Rental',
                                          style: informationTextStyle,
                                        ),
                                        Text("12 Month"),
                                        Text("6 Month"),
                                        Text("1 Month"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        const Icon(Icons.monetization_on_rounded),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          'Harga',
                                          style: informationTextStyle,
                                        ),

                                        Text(hrg12.toString() +" IDR"),
                                        Text(hrg6.toString() +" IDR"),
                                        Text(mobil.price.toString() +" IDR"),
                                      ],
                                    ),

                                  ],
                                ),

                              ),
                              Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Specification',
                                          textAlign: TextAlign.justify,
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Staatliches',
                                          ),
                                        ),
                                      ),


                                      Container(
                                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                const Icon(Icons.car_rental_rounded),
                                                const SizedBox(height: 8.0),
                                                Text(
                                                  'Brand',
                                                  style: informationTextStyle,
                                                ),
                                                Text(mobil.brand),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                const Icon(Icons.color_lens_rounded),
                                                const SizedBox(height: 8.0),
                                                Text(
                                                  'Color',
                                                  style: informationTextStyle,
                                                ),
                                                Text(mobil.color),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                const Icon(Icons.car_repair_rounded),
                                                const SizedBox(height: 8.0),
                                                Text(
                                                  'Gearbox',
                                                  style: informationTextStyle,
                                                ),
                                                Text(mobil.gearbox.toString()),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                const Icon(Icons.local_gas_station_rounded),
                                                const SizedBox(height: 8.0),
                                                Text(
                                                  'Fuel',
                                                  style: informationTextStyle,
                                                ),
                                                Text(mobil.fuel.toString()),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                                        child: RaisedButton(
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
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
