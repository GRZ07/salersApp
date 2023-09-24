import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'Galaxy Note20',
      brand: 'Samsung',
      features: {
        'RAM': 8,
        'Storage': 128,
        'CPU': 'Snapdragon 865+',
      },
      category: 'phones',
      imageUrl:
          'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    ),
    Product(
      id: 1,
      name: 'Galaxy S22',
      brand: 'Samsung',
      features: {
        'RAM': 8,
        'Storage': 128,
        'CPU': 'Snapdragon 8Gen 2',
      },
      category: 'phones',
      imageUrl:
          'https://image-us.samsung.com/us/smartphones/galaxy-s22/images/gallery/R0_Exclusive-Violet/FLRC-214-R0-Violet-01-PDP-GALLERY-1600x1200.jpg?\$product-details-jpg\$',
    ),
    Product(
      id: 1,
      name: 'Galaxy Note20',
      brand: 'Samsung',
      features: {
        'RAM': 8,
        'Storage': 128,
        'CPU': 'Snapdragon 865+',
      },
      category: 'phones',
      imageUrl:
          'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    ),
    Product(
      id: 1,
      name: 'Galaxy Note20',
      brand: 'Samsung',
      features: {
        'RAM': 8,
        'Storage': 128,
        'CPU': 'Snapdragon 865+',
      },
      category: 'phones',
      imageUrl:
          'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    ),
    Product(
      id: 1,
      name: 'Galaxy Note20',
      brand: 'Samsung',
      features: {
        'RAM': 8,
        'Storage': 128,
        'CPU': 'Snapdragon 865+',
      },
      category: 'phones',
      imageUrl:
          'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    ),
  ];

  List<Product> get products {
    return [..._products];
  }
}
