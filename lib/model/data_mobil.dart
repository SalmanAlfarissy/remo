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
  List<String> imageUrl;


  DataMobil({
    required this.name,
    required this.price,
    required this.color,
    required this.gearbox,
    required this.fuel,
    required this.brand,
    required this.imageAsset,
    required this.imageUrl,

  });
}
var listMobil = [
  DataMobil(
      name: 'Honda Civic Type R',
      price: 1000000,
      color: 'White',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      imageAsset: 'images/honda.jpeg',
      imageUrl: [
        'https://imgx.gridoto.com/crop/0x0:0x0/700x465/filters:watermark(file/2017/gridoto/img/watermark_otoseken.png,5,5,60)/photo/2020/02/13/456583938.jpeg',
        'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2021/02/06/nengun-7548-2003-spoon-aero_fron-20210206082708.png',
        'https://autonetmagz.com/wp-content/uploads/2015/10/honda-civic-2016-white.jpg'

      ],
  ),
  DataMobil(
      name: 'Land Rover Evoque 2022',
      price: 1150000,
      color: 'silver',
      gearbox: '6',
      fuel: '19L',
      brand: 'Land Rover',
      imageAsset: 'images/landrover.jpeg',
      imageUrl: [
        'https://img.tinbanxe.vn/images/Land%20Rover/Land%20Rover%20Range%20Rover%20Evoque/mau-sac/land-rover-range-rover-evoque-mau-bac-tinbanxe.jpg',
        'https://www.lloydmotorgroup.com/ImageLibrary/Vehicle/21936-RJs0JPt9jUzGs9GtH2lw.jpg',
        'https://photos.strathcom.com/image/show/1200x_/605a8ed9e9813b1a3bc5e8e8.jpg'
      ],
  ),
  DataMobil(
      name: 'Mercedes Benz SLS',
      price: 1500000,
      color: 'Red',
      gearbox: '5',
      fuel: '6L',
      brand: 'Mercedes',
      imageAsset: 'images/marcedes.jpg',
      imageUrl: [
      'https://i.blogs.es/fc8f5d/sls1_500/1366_2000.jpg',
      'https://acnews.blob.core.windows.net/imgnews/large/0_0_20090927184852436.jpg',
      'https://i.pinimg.com/originals/c7/46/91/c7469197a75d856fb5de882098bcacce.jpg'

      ],
  ),
  DataMobil(
      name: 'Audi A6',
      price: 900000,
      color: 'Silver',
      gearbox: '5',
      fuel: '6L',
      brand: 'Audi',
      imageAsset: 'images/audi.jpg',
      imageUrl: [
        'https://asset.kompas.com/crops/oHio3-HCw6sGT7LDANhsT0TRb3k=/289x10:3233x1973/750x500/data/photo/2020/09/16/5f6190e26d44b.jpg',
        'https://i0.wp.com/carsworld.id/wp-content/uploads/2020/09/All-new-Audi-A6.jpg?resize=586%2C388&ssl=1',
        'https://static.republika.co.id/uploads/images/inpicture_slide/the-all-new-audi_200916122957-186.jpg'

      ],
  ),
  DataMobil(
      name: 'Jaguar XF',
      price: 1200000,
      color: 'Silver',
      gearbox: '6',
      fuel: '10L',
      brand: 'Jaguar',
      imageAsset: 'images/jaguar.jpg',
      imageUrl: [
        'https://cdn.motor1.com/images/mgl/W889Kr/s1/2022-jaguar-xf-300-sport.jpg',
        'https://autoplius-img.dgn.lt/nac_12_9587/nuotrauka.jpg',
        'https://www.carscoops.com/wp-content/uploads/2020/10/2021-Jaguar-XE-00.jpg'

      ],
  ),
  DataMobil(
      name: 'BMW E1',
      price: 800000,
      color: 'Green',
      gearbox: '6',
      fuel: '6L',
      brand: 'BMW',
      imageAsset: 'images/bmw.jpg',
      imageUrl: [
        'https://cdn.motor1.com/images/mgl/PjvYW/s1/1991-bmw-e1-concept.jpg',
        'https://cdn.motor1.com/images/mgl/7AY7o/s1/1991-bmw-e1-concept.jpg',
        'https://cdn.motor1.com/images/mgl/0o7Bm/s3/bmw-e1-concept-1991.jpg'

      ],
  ),

];
