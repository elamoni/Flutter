import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  // List of network image URLs and captions
  final List<String> imageUrls = [
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
    'https://example.com/image5.jpg',
    'https://example.com/image6.jpg',
  ];

  final List<String> captions = [
    'Photo 0',
    'Photo 1',
    'Photo 2',
    'Photo 3',
    'Photo 4',
    'Photo 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to My Photo Gallery',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search for Photos...',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 8.0),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  crossAxisSpacing: 8.0, // Spacing between columns
                  mainAxisSpacing: 8.0, // Spacing between rows
                ),
                itemCount: imageUrls.length,
                shrinkWrap: true, // To allow scrolling inside the Column
                physics: NeverScrollableScrollPhysics(), // Disable scrolling for the grid
                itemBuilder: (context, index) {
                  return GridTile(
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                    footer: Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        captions[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
