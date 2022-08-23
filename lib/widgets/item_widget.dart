import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.lime.shade200,
      // shape: StadiumBorder(),
      // elevation: 0.0,
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        textColor: Colors.black,
        trailing: Text(
          "\$ ${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
