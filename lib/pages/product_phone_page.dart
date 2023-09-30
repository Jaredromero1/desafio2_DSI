import 'package:flutter/material.dart';

void main() {
  runApp(const ProductsPhone());
}

class ProductsPhone extends StatelessWidget {
  const ProductsPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone15pro-digitalmat-gallery-3-202309?wid=364&hei=333&fmt=png-alpha&.v=1693081542150',
                'iPhone 15 pro',
                '999.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone15promax-digitalmat-gallery-3-202309?wid=364&hei=333&fmt=png-alpha&.v=1693081545199',
                'iPhone 15 pro Max',
                '1199.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone15-digitalmat-gallery-4-202309?wid=364&hei=333&fmt=png-alpha&.v=1693011169045',
                'iPhone 15',
                '799.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone15plus-digitalmat-gallery-4-202309?wid=364&hei=333&fmt=png-alpha&.v=1693011173707',
                ' iPhone 15 Plus',
                '899.00'),
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
              height: 130.0,
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 43.0),
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
