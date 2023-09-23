import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'Galaxy Note20',
      desc: 'A great phone',
      brand: 'Samsung',
      features: {
        'RAM': 8,
        'Storage': 128,
        'CPU': 'Snapdragon 865+',
      },
      flaws: ['flaw 1', 'flaw 2'],
      category: 'phones',
      rating: 8 / 10,
      imageUrls: [
        'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
      ],
      primImageUrl:
          'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    ),
  ];

  List<Product> get products {
    return [..._products];
  }
}
