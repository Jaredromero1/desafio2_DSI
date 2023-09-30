import 'package:flutter/material.dart';

void main() {
  runApp(const ProductsLaptop());
}

class ProductsLaptop extends StatelessWidget {
  const ProductsLaptop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi tienda',
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba-digitalmat-gallery-2-202111?wid=364&hei=333&fmt=png-alpha&.v=1664581580690',
                'MacBook Air 13-inch with M1 chip',
                '999.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-digitalmat-gallery-2-202206?wid=364&hei=333&fmt=png-alpha&.v=1652827325363',
                'MacBook Air 13-inch with M2 chip',
                '1099.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-digitalmat-gallery-2-202206?wid=364&hei=333&fmt=png-alpha&.v=1665427483152',
                'MacBook Pro 13-inch',
                '1299.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-16-digitalmat-gallery-1-202301?wid=364&hei=333&fmt=jpeg&qlt=95&.v=1670360687488',
                'MacBook Pro 16-inch',
                '2499.00'),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, String imageUrl, String title, String price) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 120.0,
              height: 120.0,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 36.0),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
