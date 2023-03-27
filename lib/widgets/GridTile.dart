import 'package:flutter/material.dart';
import 'package:scanner/models/catalog.dart';

class ProductGridtile extends StatelessWidget {
  const ProductGridtile({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.price.toString(),
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
            ),
          ),
        ),
      ),
      header: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.name,
              style: TextStyle(color: Color.fromARGB(128, 0, 0, 0)),
            ),
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center, // use aligment
        child: Image.network(
          item.image,
          height: 105,
          width: 105,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
