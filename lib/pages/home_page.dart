import 'package:flutter/material.dart';
import '../pages/product_phone_page.dart';
import '../pages/product_laptop_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.phone_iphone)),
                Tab(icon: Icon(Icons.laptop_mac)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ProductsPhone(),
              ProductsLaptop(),
            ],
          ),
        ),
      ),
    );
  }
}
