import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FruitComboCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final VoidCallback onAdd;
  final Color backgroundColor;

  const FruitComboCard({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.isFavorite,
    required this.onFavoriteToggle,
    required this.onAdd,
    this.backgroundColor = Colors.white,
  });

  static const Color myOrange = Color(0xFFFFA451);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      imagePath,
                      height: 80.h,
                      width: 120.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: myOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        color: myOrange,
                        size: 24.sp,
                      ),
                      onPressed: onAdd,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            top: 8.h,
            child: GestureDetector(
              onTap: onFavoriteToggle,
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: myOrange,
                size: 24.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
