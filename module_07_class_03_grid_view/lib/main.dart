import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: HomeAcitvity(),
    );
  }
}

class HomeAcitvity extends StatelessWidget {



  List myProducts = [
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Laptop XYZ',
      'price': 899.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Gaming Mouse',
      'price': 49.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Wireless Keyboard',
      'price': 79.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'External Hard Drive',
      'price': 129.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Bluetooth Headphones',
      'price': 69.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Smartphone Stand',
      'price': 19.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Webcam',
      'price': 59.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Wireless Charger',
      'price': 39.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Portable Speaker',
      'price': 89.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'USB-C Cable',
      'price': 9.99
    },

    // Additional 14 objects with unique data
    {
      'image': 'https://example.com/product1.jpg',
      'title': 'Product 1',
      'price': 29.99
    },
    {
      'image': 'https://example.com/product2.jpg',
      'title': 'Product 2',
      'price': 39.99
    },
    {
      'image': 'https://example.com/product3.jpg',
      'title': 'Product 3',
      'price': 49.99
    },
    {
      'image': 'https://example.com/product4.jpg',
      'title': 'Product 4',
      'price': 59.99
    },
    {
      'image': 'https://example.com/product5.jpg',
      'title': 'Product 5',
      'price': 69.99
    },
    {
      'image': 'https://example.com/product6.jpg',
      'title': 'Product 6',
      'price': 79.99
    },
    {
      'image': 'https://example.com/product7.jpg',
      'title': 'Product 7',
      'price': 89.99
    },
    {
      'image': 'https://example.com/product8.jpg',
      'title': 'Product 8',
      'price': 99.99
    },
    {
      'image': 'https://example.com/product9.jpg',
      'title': 'Product 9',
      'price': 109.99
    },
    {
      'image': 'https://example.com/product10.jpg',
      'title': 'Product 10',
      'price': 119.99
    },
    {
      'image': 'https://example.com/product11.jpg',
      'title': 'Product 11',
      'price': 129.99
    },
    {
      'image': 'https://example.com/product12.jpg',
      'title': 'Product 12',
      'price': 139.99
    },
    {
      'image': 'https://example.com/product13.jpg',
      'title': 'Product 13',
      'price': 149.99
    },
    {
      'image': 'https://example.com/product14.jpg',
      'title': 'Product 14',
      'price': 159.99
    },
  ];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold();
    // Show a Snackbar
  }
}
