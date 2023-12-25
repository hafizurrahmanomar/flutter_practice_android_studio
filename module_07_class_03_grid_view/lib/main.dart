import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  //#custom snakebar create

  mySnakeBar(context, masseage) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(masseage)));
  }

  //#custom jason data create
  List<Map<String, dynamic>> myProducts = [
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple iMac',
      'price': 1999.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'iPad Pro',
      'price': 799.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'MacBook Air',
      'price': 1299.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Magic Mouse',
      'price': 69.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'AirPods Pro',
      'price': 249.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple Watch Series 7',
      'price': 399.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'HomePod Mini',
      'price': 99.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'iPhone 13 Pro',
      'price': 1099.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple Pencil',
      'price': 129.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple TV 4K',
      'price': 179.99
    },
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
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color(0xf7f40606),
        elevation: 10,
        leading: Icon(
          Icons.settings_applications_sharp,
          size: 50,
          color: Colors.amberAccent,
        ),
        title: Text('List_tile List View'),
      ),

      //# dynamic listViewe start
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              // Adjust the number of columns as needed
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8),
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        myProducts[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        myProducts[index]['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${myProducts[index]['price']}',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Builder Example'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Adjust the number of columns as needed
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Add your onTap logic here
              },
              child: Card(
                color: Colors.purpleAccent,
                elevation: 2.0,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        myProducts[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        myProducts[index]['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Text(
                      '\$${myProducts[index]['price']}',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Sample data
List<Map<String, dynamic>> myProducts = [
  {'image': 'https://cdn.example.com/product1.jpg', 'title': 'Product 1', 'price': 19.99},
  {'image': 'https://cdn.example.com/product2.jpg', 'title': 'Product 2', 'price': 29.99},
  // Add more product data as needed
];



*/
