import 'package:flutter/material.dart';

class Product {
  String id, title, price;
  DateTime createdAt, updatedAt;

  Product({
     this.id,
     this.title,
     this.price,
     this.createdAt,
     this.updatedAt,
  });
}
