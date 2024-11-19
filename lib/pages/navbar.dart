// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'product.dart';
import 'home.dart';
import 'user_pages.dart'; // Import UserPage

class Navbar extends StatefulWidget {
  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ProductList(),
    UserPage(), // Tambahkan UserPage ke daftar halaman
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits), label: 'Product'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'), // Item baru untuk UserPage
        ],
      ),
    );
  }
}
