import 'package:flutter/material.dart';
import 'package:coba_flutter/utilities/fun_collection.dart';

class Product extends StatelessWidget {
  get length => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> Products = [
    {
      'name': 'X-TEN 10W30 MATIC 0.8L',
      'price': 'Rp 52.000',
      'sold': '5 terjual',
      'image': 'https://xten.id/wp-content/uploads/XT-30-MATIC.png'
    },
    {
      'name': 'X-TEN DOUBLE ESTER MATIC 10W30 800ML',
      'price': 'Rp 92.000',
      'sold': '3 terjual',
      'image': 'https://xten.id/wp-content/uploads/X-DEM-10W30.png'
    },
    {
      'name': 'MICHELIN TL PILOT STREET 80/80-14',
      'price': 'Rp 337.000',
      'sold': '10 terjual',
      'image':
          'https://down-id.img.susercontent.com/file/id-11134207-7r98y-lx83jeoxv9nw19'
    },
    {
      'name': 'Pirelli Diablo Rosso Sport 70/90-14',
      'price': 'Rp 310.000',
      'sold': '4 terjual',
      'image':
          'https://s3.bukalapak.com/img/39938506003/s-400-400/data.jpeg.webp'
    }
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
      ),
      body: GridBuilderDuaKolom(items: Products),
    );
  }
}
