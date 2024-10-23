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
      'name': 'Product 1',
      'price': 'Rp 50.000',
      'sold': '3 terjual',
      'image':
          'https://i0.wp.com/raisa.aeonstore.id/wp-content/uploads/2023/07/8927354.png?fit=1080%2C1080&ssl=1'
    },
    {
      'name': 'Product 1',
      'price': 'Rp 50.000',
      'sold': '3 terjual',
      'image':
          'https://i0.wp.com/raisa.aeonstore.id/wp-content/uploads/2023/07/8927354.png?fit=1080%2C1080&ssl=1'
    },
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
