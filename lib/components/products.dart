import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutralike/pages/product_details.dart';

class Product extends StatefulWidget {
  // const Product({Key key}) : super(key: key);
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "hdhjwehdjwjdkwjlkdjwjbfcjwbhjcbfwkjhkfwjldjklwjedknwjbjhwfbwjhfb",
      "price": 'Rs X',
    },
    {
      "name": "item2",
      "price": 'Rs Y',
    },
    {
      "name": "item3",
      "price": 'Rs Z',
    },
    {
      "name": "item4",
      "price": 'Rs W',
    },
    {
      "name": "item5",
      "price": 'Rs 85',
    },
    {
      "name": "item6",
      "price": 'Rs 85',
    },
    {
      "name": "item7",
      "price": 'Rs 85',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 4),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.of(context).push(
              new MaterialPageRoute(
                // passing values to product details page
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_price: prod_price,
                  ))),
      title: Text(
        prod_name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        prod_price,
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
      ),
    );
  }
}
