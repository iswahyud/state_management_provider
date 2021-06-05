import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'Buku Pemrograman Flutter - Seri 1',
    'Buku Pemrograman Laravel',
    'Buku Pemrograman Codeigniter',
    'Buku Pemrograman Flutter - Seri 2',
    'Buku Pemrograman Python dengan Flask',
    'Buku Pemrograman PHP',
    'Buku Pemrograman Ruby',
    'Buku Pemrograman C#',
    'Buku Pemrograman ReactJs',
    'Buku Pemrograman Ionic',
    'Buku Pemrograman Javascript',
    'Buku Pemrograman Golang',
    'Buku Pemrograman Swift',
    'Buku Pemrograman JAVA',
  ];

  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  Item getByPosition(int position) {
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 70000;

  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
