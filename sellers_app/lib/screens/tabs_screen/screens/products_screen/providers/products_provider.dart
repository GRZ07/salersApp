import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/product.dart';
import '../../../../../utils/send_get.dart';
import '../../../../../models/feature.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _products = [
    // Product(
    //   id: 1,
    //   name: 'Galaxy Note20',
    //   brand: 'Samsung',
    //   features: [
    //     Feature(feature: 'Feature 1', type: 'string', value: 'Value 6'),
    //     Feature(
    //         feature: 'Feature 2',
    //         type: 'list<string>',
    //         value: '["Item X", "Item Y"]'),
    //   ],
    //   imageUrl:
    //       'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    // ),
    // Product(
    //   id: 1,
    //   name: 'Galaxy S22',
    //   brand: 'Samsung',
    //   features: {
    //     'RAM': 8,
    //     'Storage': 128,
    //     'CPU': 'Snapdragon 8Gen 2',
    //   },
    //   imageUrl:
    //       'https://image-us.samsung.com/us/smartphones/galaxy-s22/images/gallery/R0_Exclusive-Violet/FLRC-214-R0-Violet-01-PDP-GALLERY-1600x1200.jpg?\$product-details-jpg\$',
    // ),
    // Product(
    //   id: 1,
    //   name: 'Galaxy Note20',
    //   brand: 'Samsung',
    //   features: [
    //     Feature(feature: 'Feature 1', type: 'string', value: 'Value 6'),
    //     Feature(
    //         feature: 'Feature 2',
    //         type: 'list<string>',
    //         value: '["Item X", "Item Y"]'),
    //   ],
    //   imageUrl:
    //       'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    // ),
    // Product(
    //   id: 1,
    //   name: 'Galaxy Note20',
    //   brand: 'Samsung',
    //   features: [
    //     Feature(feature: 'Feature 1', type: 'string', value: 'Value 6'),
    //     Feature(
    //         feature: 'Feature 2',
    //         type: 'list<string>',
    //         value: '["Item X", "Item Y"]'),
    //   ],
    //   imageUrl:
    //       'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    // ),
    // Product(
    //   id: 1,
    //   name: 'Galaxy Note20',
    //   brand: 'Samsung',
    //   features: [
    //     Feature(feature: 'Feature 1', type: 'string', value: 'Value 6'),
    //     Feature(
    //         feature: 'Feature 2',
    //         type: 'list<string>',
    //         value: '["Item X", "Item Y"]'),
    //   ],
    //   imageUrl:
    //       'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
    // ),
  ];

  List<Product> get products {
    return [..._products];
  }

  final _client = http.Client();

  var productsFetched = false;
  void refetchProducts() {
    productsFetched = false;
    notifyListeners();
  }

  Future<void> fetchProducts(String token) async {
    final url = Uri.parse('${dotenv.env['URL']}/api/products/seller-products');
    try {
      final responseData =
          await sendGet(url: url, client: _client, token: token);

      final List<Product> loadedProducts = [];
      // print(responseData);

      for (final product in responseData) {
        loadedProducts.add(
          Product(
            id: product['id'],
            name: product['name'],
            brand: product['brand'],
            imageUrl:
                'https://cdn.dxomark.com/wp-content/uploads/medias/post-65438/galaxynote20.jpg',
            features: [
              Feature(feature: 'Feature 1', type: 'string', value: 'Value 6'),
              Feature(
                  feature: 'Feature 2',
                  type: 'list<string>',
                  value: '["Item X", "Item Y"]'),
            ],
          ),
        );
      }
      productsFetched = true;
      _products = loadedProducts;
      notifyListeners();
    } catch (err) {
      print(err);
      productsFetched = true;
      notifyListeners();
      rethrow;
    }
  }
}
