import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DataMobil {
  String name;
  double price;
  String color;
  String gearbox;
  String fuel;
  String brand;
  String imageAsset;


  DataMobil({
    required this.name,
    required this.price,
    required this.color,
    required this.gearbox,
    required this.fuel,
    required this.brand,
    required this.imageAsset,

  });
}
CarsList allCars = CarsList( cars : [
  DataMobil(
      name: 'Honda Civic Type R',
      price: 1000000,
      color: 'White',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      imageAsset: 'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2021/12/17/01jpeg-20211217040948.jpeg'
  ),
  DataMobil(
      name: 'Land Rover Evoque 2022',
      price: 1150000,
      color: 'silver',
      gearbox: '6',
      fuel: '19L',
      brand: 'Land Rover',
      imageAsset: 'https://imgcdn.oto.com/medium/gallery/exterior/43/379/land-rover-range-rover-evoque-16630.jpg'
  ),
  DataMobil(
      name: 'Mercedes Benz SLS',
      price: 1500000,
      color: 'Red',
      gearbox: '5',
      fuel: '6L',
      brand: 'Mercedes',
      imageAsset: 'https://cdns.klimg.com/otosia.com/resized/475x/p/326873sri.jpg'
  ),
  DataMobil(
      name: 'Audi A6',
      price: 900000,
      color: 'Silver',
      gearbox: '5',
      fuel: '6L',
      brand: 'Audi',
      imageAsset: 'https://asset.kompas.com/crops/oHio3-HCw6sGT7LDANhsT0TRb3k=/289x10:3233x1973/750x500/data/photo/2020/09/16/5f6190e26d44b.jpg'
  ),
  DataMobil(
      name: 'Jaguar XF',
      price: 1200000,
      color: 'Silver',
      gearbox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      imageAsset: 'https://www.otomaniac.com/wp-content/uploads/2016/09/Spesifikasi-dan-Harga-Jaguar-XF.jpg'
  ),
  DataMobil(
      name: 'Honda Civic Type R',
      price: 800000,
      color: 'Green',
      gearbox: '6',
      fuel: '6L',
      brand: 'BMW',
      imageAsset: 'https://live.staticflickr.com/2877/33636340912_cd71aab863_b.jpg'
  ),

]);

class CarsList {
  List<DataMobil> cars;

  CarsList({required this.cars});
}