import 'package:flutter/material.dart';

class Product {
  final String image, title, description, size;
  final int price, id;
  final Color bgColor;
  Product({
  required this.id,
  required this.image,
  required this.title,
  required this.price,
  required this.description,
  required this.size,
  required this.bgColor
});
}

List<Product> demo_product = [
  Product(
    id: 1,
    title: 'Anggur',
    price: 28000,
    size: 'Kg',
    description: 'Anggur segar nikmat',
    image: 'assets/anggur.png',
    bgColor: const Color(0xFF3D82AE)
),
  Product(
    id: 2,
    title: 'Kembang kol',
    price: 30000,
    size: 'Kg',
    description: 'Kembang kol, bukan kembang api',
    image: 'assets/kembang kol.png',
    bgColor: const Color(0xFF3D82AE)
  ),
  Product(
    id: 3,
    title: 'Cabai Merah',
    price: 50000,
    size: 'Kg',
    description: 'Cabe cabean',
    image: 'assets/cabai merah.png',
    bgColor: const Color(0xFF3D82AE)
  ),
  Product(
    id: 4,
    title: 'Jeruk',
    price: 10000,
    size: 'Kg',
    description: 'Jeruk itu Orange',
    image: 'assets/jeruk.png',
    bgColor: const Color(0xFF3D82AE)
  )
];