// import 'package:coba_flutter/pages/product.dart';
// import 'package:coba_flutter/utilities/fun_collection.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 1,
//               height: 250,
//               child: ClipRRect(
//                 child: Image.network(
//                   'https://images.unsplash.com/photo-1672717899523-2182b3656f1a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//                   width: 10,
//                   height: 10,
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               width: MediaQuery.of(context).size.width,
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       // Navigasi ke halaman baru
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => NewPage(title: 'History Page'),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xFF1C8A66),
//                         shape: BoxShape.circle,
//                       ),
//                       padding: EdgeInsets.all(10.0),
//                       child: Icon(
//                         Icons.history,
//                         color: Colors.white,
//                         size: 30.0,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               NewPage(title: 'Shopping Cart Page'),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xFF1C8A66),
//                         shape: BoxShape.rectangle,
//                       ),
//                       padding: EdgeInsets.all(10.0),
//                       child: Icon(
//                         Icons.shopping_cart,
//                         color: Colors.white,
//                         size: 30.0,
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => NewPage(title: 'Business Page'),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xFF1C8A66),
//                         shape: BoxShape.rectangle,
//                       ),
//                       padding: EdgeInsets.all(10.0),
//                       child: Icon(
//                         Icons.business,
//                         color: Colors.white,
//                         size: 30.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10), // Add some space between sections
//             Expanded(
//               child: ListView.builder(
//                 itemCount: ProductList().length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                       // title: Text([index]),
//                       );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'history.dart';
import 'shopping_cart.dart';
import 'business.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> names = [
    'Bapakku',
    'Nelayan',
    'Juragan',
    'Peternakan',
    'Ibukku',
    'Sayang',
    'Kamu',
    'Suka',
    'Lotisan',
    'Joko',
    'Kiki',
    'Lina',
    'Mira'
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
                'https://images.unsplash.com/photo-1672717899523-2182b3656f1a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                      color: Color(0xFF1C8A66),
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
                      color: Color(0xFF1C8A66),
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
                      color: Color(0xFF1C8A66),
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
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
