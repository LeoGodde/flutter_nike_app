import 'package:flutter/material.dart';

class Product {
  final List<String> images;
  final String title, description;
  final int price, id;
  final List<int> sizes;
  final Color color;
  final String brand;
  final bool featuredProduct;
  final bool available;

  Product({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
    required this.description,
    required this.sizes,
    required this.color,
    required this.brand,
    required this.featuredProduct,
    required this.available,
  });
}

//criar modelo e depois listar produtos
List<Product> products = [
  Product(
      id: 1,
      featuredProduct: false,
      title: "Air Max II",
      price: 234,
      sizes: [37, 38, 40, 41, 43],
      description: loremText,
      images: ["assets/images/nike_(1).png"],
      color: const Color(0xFF969696),
      brand: 'nike',
      available: true),
  Product(
      id: 2,
      featuredProduct: false,
      title: "Challenger",
      price: 443,
      sizes: [37, 38, 40],
      description: loremText,
      images: ["assets/images/nike_(2).png"],
      color: const Color(0xFFFFE19F),
      brand: 'nike',
      available: true),
  Product(
      id: 3,
      featuredProduct: false,
      title: "Pegasus",
      price: 300,
      sizes: [37, 39, 40, 41],
      description: loremText,
      images: ["assets/images/nike_(3).png", "assets/images/nike_(6).png"],
      color: const Color(0xFF00E0FF),
      brand: 'nike',
      available: true),
  Product(
      id: 4,
      featuredProduct: false,
      title: "Dunk",
      price: 490,
      sizes: [35, 38, 40, 41, 44, 45],
      description: loremText,
      images: ["assets/images/nike_(4).png", "assets/images/nike_(5).png"],
      color: const Color(0xFF0080FF),
      brand: 'nike',
      available: true),
  Product(
      id: 5,
      featuredProduct: true,
      title: "Air Trainner",
      price: 290,
      sizes: [37, 38, 43, 44, 46],
      description: loremText,
      images: ["assets/images/nike_(5).png", "assets/images/nike_(4).png"],
      color: const Color(0xFFFF3800),
      brand: 'nike',
      available: true),
  Product(
      id: 6,
      featuredProduct: false,
      title: "Air Trainner Max",
      price: 295,
      sizes: [35, 36, 38, 41, 43],
      description: loremText,
      images: ["assets/images/nike_(6).png", "assets/images/nike_(3).png"],
      color: const Color(0xFFFF002D),
      brand: 'nike',
      available: true),
  Product(
      id: 7,
      featuredProduct: true,
      title: "Supra Commander",
      price: 450,
      sizes: [35, 36, 37, 41, 42],
      description: loremText,
      images: ["assets/images/nike_(7).png", "assets/images/nike_(8).png"],
      color: const Color(0xFF00FF8F),
      brand: 'nike',
      available: true),
  Product(
      id: 8,
      featuredProduct: false,
      title: "First Superior",
      price: 900,
      sizes: [39, 40, 41, 45],
      description: loremText,
      images: ["assets/images/nike_(8).png", "assets/images/nike_(7).png"],
      color: const Color(0xFF999999),
      brand: 'nike',
      available: true),
  Product(
      id: 9,
      featuredProduct: true,
      title: "Quadra IV",
      price: 500,
      sizes: [38, 39],
      description: loremText,
      images: ["assets/images/nike_(9).png", "assets/images/nike_(15).png"],
      color: const Color(0xFFFF7600),
      brand: 'nike',
      available: true),
  Product(
      id: 10,
      featuredProduct: true,
      title: "Maggo Supra II",
      price: 430,
      sizes: [40],
      description: loremText,
      images: ["assets/images/nike_(10).png"],
      color: const Color(0xFF0080FF),
      brand: 'nike',
      available: true),
  Product(
      id: 11,
      featuredProduct: false,
      title: "Medalier",
      price: 410,
      sizes: [44, 45],
      description: loremText,
      images: ["assets/images/nike_(11).png"],
      color: const Color(0xFFC4C4C4),
      brand: 'nike',
      available: true),
  Product(
      id: 12,
      featuredProduct: true,
      title: "Tunder Supera",
      price: 660,
      sizes: [37, 38, 39, 40, 41, 44],
      description: loremText,
      images: ["assets/images/nike_(12).png"],
      color: const Color(0xFFF8FF00),
      brand: 'nike',
      available: true),
  Product(
      id: 13,
      featuredProduct: false,
      title: "Air Max III",
      price: 480,
      sizes: [36, 37, 41, 42, 44],
      description: loremText,
      images: ["assets/images/nike_(13).png"],
      color: const Color(0xFFFF0009),
      brand: 'nike',
      available: true),
  Product(
      id: 14,
      featuredProduct: false,
      title: "McCree",
      price: 480,
      sizes: [35, 40, 41, 44],
      description: loremText,
      images: ["assets/images/nike_(14).png"],
      color: const Color(0xFFFFD80C),
      brand: 'nike',
      available: true),
  Product(
      id: 15,
      featuredProduct: false,
      title: "Skin Plus",
      price: 890,
      sizes: [39, 40, 44],
      description: loremText,
      images: ["assets/images/nike_(15).png", "assets/images/nike_(9).png"],
      color: const Color(0xFFFF6A00),
      brand: 'nike',
      available: true),
  Product(
      id: 16,
      featuredProduct: false,
      title: "Pro Trainner",
      price: 700,
      sizes: [37, 39, 44, 45, 46],
      description: loremText,
      images: ["assets/images/nike_(16).png"],
      color: const Color(0xFF45FF04),
      brand: 'nike',
      available: true),
  Product(
      id: 17,
      featuredProduct: false,
      title: "GORE-Tex",
      price: 750,
      sizes: [37, 38, 39, 40, 41, 42, 44],
      description: loremText,
      images: ["assets/images/nike_(17).png"],
      color: const Color(0xFFFF0030),
      brand: 'nike',
      available: true),
  Product(
      id: 18,
      featuredProduct: false,
      title: "Metallium",
      price: 1050,
      sizes: [41, 42, 44],
      description: loremText,
      images: ["assets/images/nike_(18).png"],
      color: const Color(0xFF00C4FF),
      brand: 'nike',
      available: true),
  Product(
      id: 19,
      featuredProduct: false,
      title: "Flywave",
      price: 980,
      sizes: [37, 38, 40, 41, 42, 43, 44, 45],
      description: loremText,
      images: ["assets/images/nike_(19).png"],
      color: const Color(0xFFFF1200),
      brand: 'nike',
      available: true),
  Product(
      id: 20,
      featuredProduct: false,
      title: "Flywire",
      price: 300,
      sizes: [37, 38, 44, 45, 46],
      description: loremText,
      images: ["assets/images/nike_(20).png"],
      color: const Color(0xFFFF9500),
      brand: 'nike',
      available: true),
];

String loremText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
