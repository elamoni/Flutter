import 'package:flutter/material.dart';

// Define a Product class to represent individual products
class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // Create a list of products
  List<Product> products = [
    Product('Product 1', 19.99),
    Product('Product 2', 29.99),
    Product('Product 3', 39.99),
    Product('Product 4', 49.99),
    Product('Product 5', 59.99),
    Product('Product 6', 69.99),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Implement the buy now action for the product
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Buy Now'),
                      content: Text('You have purchased {product.name}.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Buy Now'),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductList(),
  ));
}
