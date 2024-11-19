import 'package:flutter/material.dart';
import 'history.dart';
import 'shopping_cart.dart';
import 'business.dart';

class Product {
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Product> products = [
    Product(
      name: 'Servis Lengkap',
      description:
          'Membersihkan CVT menggunakan cairan khusus, ganti oli, membersihkan Throttle Body dan ganti oli',
      imageUrl:
          'https://cdn.antaranews.com/cache/1200x800/2022/04/28/IMG-20220428-WA0002_7.jpg', // Ganti dengan URL gambar yang sesuai
      price: 'Rp. 150.000',
    ),
    Product(
      name: 'Isi Angin',
      description: 'Isi Angin Ban dengan Nitrogen.',
      imageUrl:
          'https://img.icarcdn.com/mobil123-news/body/68139-ban_motor.jpg', // Ganti dengan URL gambar yang sesuai
      price: 'Rp. Gratis',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: ClipRRect(
              child: Image.network(
                'https://planetban.com/promo-store/storage/outlet/d50fc14bc917a01fb9e5bc98f60013d8.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF2B4CA2),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingCartPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF2B4CA2),
                      shape: BoxShape.rectangle,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BusinessPage()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF2B4CA2),
                      shape: BoxShape.rectangle,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(
                      Icons.business,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            products[index].imageUrl,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            products[index].name,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(products[index].description),
                          const SizedBox(height: 4),
                          Text(
                            products[index].price,
                            style: const TextStyle(
                                color: Colors.green, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(product.imageUrl),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.price,
                    style: const TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
