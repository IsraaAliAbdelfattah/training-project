import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'fruit_combo_card.dart';

class ProductList extends StatelessWidget {
  final String category;
  final Set<int> favoriteProducts;
  final List<Color> cardColors;
  final Function(int) onFavoriteToggle;

  const ProductList({
    super.key,
    required this.category,
    required this.favoriteProducts,
    required this.cardColors,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final products = _getProducts(category);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(products.length, (index) {
          final product = products[index];
          final isFav = favoriteProducts.contains(index);

          return Container(
            width: 160.w,
            margin: EdgeInsets.only(right: 15.w),
            child: FruitComboCard(
              title: product['name'],
              price: product['price'],
              imagePath: product['image'],
              isFavorite: isFav,
              onFavoriteToggle: () => onFavoriteToggle(index),
              onAdd: () {},
              backgroundColor: cardColors[index % cardColors.length],
            ),
          );
        }),
      ),
    );
  }

  List<Map<String, dynamic>> _getProducts(String category) {
    if (category == 'Hottest') {
      return [
        {
          'name': 'Quinoa salad',
          'price': '₦ 10,000',
          'image':
              'assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 2.png',
        },
        {
          'name': 'Tropical mix',
          'price': '₦ 8,500',
          'image':
              'assets/images/Best-Ever-Tropical-Fruit-Salad8-WIDE-removebg-preview 1.png',
        },
        {
          'name': 'Honey lime',
          'price': '₦ 2,000',
          'image':
              'assets/images/BerryWorld-Kiwiberry-Fruit-Salad-LS-removebg-preview 1.png',
        },
      ];
    } else if (category == 'Popular') {
      return [
        {
          'name': 'Berry mango',
          'price': '₦ 7,500',
          'image': 'assets/images/pop.jpg',
        },
        {
          'name': 'Citrus delight',
          'price': '₦ 6,000',
          'image': 'assets/images/pop2.jpg',
        },
        {
          'name': 'Melon magic',
          'price': '₦ 4,500',
          'image': 'assets/images/pop3.jpg',
        },
      ];
    } else if (category == 'New combo') {
      return [
        {
          'name': 'Exotic blend',
          'price': '₦ 12,000',
          'image': 'assets/images/new1.jpg',
        },
        {
          'name': 'Summer special',
          'price': '₦ 9,000',
          'image': 'assets/images//new2.jpg',
        },
        {
          'name': 'Green boost',
          'price': '₦ 7,000',
          'image': 'assets/images/new3.jpg',
        },
      ];
    } else {
      return [
        {
          'name': 'Superfood mix',
          'price': '₦ 15,000',
          'image': 'assets/images/top.jpg',
        },
        {
          'name': 'Vitamin blast',
          'price': '₦ 11,000',
          'image': 'assets/images/top2.jpg',
        },
        {
          'name': 'Energy booster',
          'price': '₦ 13,000',
          'image': 'assets/images/top3.jpg',
        },
      ];
    }
  }
}
