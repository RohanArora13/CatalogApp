import 'package:flutter/material.dart';
import 'package:scanner/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: ListTile(
            leading: Image.network(item.image),
            subtitle: Text(item.desc),
            title: Text(item.name),
            trailing: Text(
              textScaleFactor: 1.2,
              "\$${item.price.toString()}",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            )),
      ),
    );
  }
}
