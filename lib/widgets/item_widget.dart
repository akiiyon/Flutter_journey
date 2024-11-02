// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_apps/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  ItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        onTap: () {
          print("${item.name} pressed");
        },

        
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaler: TextScaler.linear(1.5),
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
