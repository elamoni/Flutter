import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green, 
          elevation: 70.0,
          title: Text('Home'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.add_business), 
            onPressed: () {

            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.image_search_rounded), 
              onPressed: () {
                // Right icon action
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'This is Mod 5 Assignment', // Set your text as specified
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'My Phone Name, Your Phone Name', // Set your text as specified
                style: TextStyle(fontSize: 24,color: Colors.green),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
