import 'package:flutter/material.dart';
import 'package:fruit_shop/Features/basket/presentation/views/basket_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/category_button.dart';
import '../widgets/fruit_combo_card.dart';
import '../widgets/product_list.dart';
import 'package:fruit_shop/features/login_screen/presentation/view/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RecommendedPage extends StatefulWidget {
  const RecommendedPage({super.key});

  @override
  State<RecommendedPage> createState() => _RecommendedPageState();
}

class _RecommendedPageState extends State<RecommendedPage> {
  String userName = "";
  String selectedCategory = 'Hottest';
  Set<int> favoriteRecommended = {};
  Set<int> favoriteProducts = {};

  static const Color myOrange = Color(0xFFFFA451);

  final List<Color> cardColors = const [
    Color(0xFFFFFAEB),
    Color(0xFFFEF0F0),
    Color(0xFFF1EFF6),
  ];

  @override
  void initState() {
    super.initState();
    _loadUserName();
  }

  Future<void> _loadUserName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString('userName') ?? "";
    });
  }

  Future<void> _logoutUser() async {
    await Supabase.instance.client.auth.signOut();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  void toggleFavoriteRecommended(int index) {
    setState(() {
      if (favoriteRecommended.contains(index)) {
        favoriteRecommended.remove(index);
      } else {
        favoriteRecommended.add(index);
      }
    });
  }

  void toggleFavoriteProducts(int index) {
    setState(() {
      if (favoriteProducts.contains(index)) {
        favoriteProducts.remove(index);
      } else {
        favoriteProducts.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: SizedBox(
            width: 90.w,
            child: TextButton(
              onPressed: _logoutUser,
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
              ),
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: myOrange,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: false, // منع الالتفاف لسطر جديد
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: GestureDetector(
              onTap: () {
                print("Basket clicked");
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: myOrange,
                    size: 28.sp,
                  ),
                  SizedBox(height: 2.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BasketView();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "My Basket",
                      style: TextStyle(
                        color: myOrange,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello ",
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    TextSpan(
                      text: userName,
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    TextSpan(
                      text: ", What fruit salad\n",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    TextSpan(
                      text: "combo do you want today?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search for fruit salad combos',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Icons.tune, color: Colors.grey, size: 24.sp),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Recommended Combo",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(
                    child: FruitComboCard(
                      title: "Honey lime\n combo",
                      price: "₦ 2,000",
                      imagePath:
                          'assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png',
                      isFavorite: favoriteRecommended.contains(0),
                      onFavoriteToggle: () => toggleFavoriteRecommended(0),
                      onAdd: () {},
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: FruitComboCard(
                      title: "Berry mango \n combo",
                      price: "₦ 8,000",
                      imagePath:
                          'assets/images/Glowing-Berry-Fruit-Salad-8-720x720-removebg-preview 1.png',
                      isFavorite: favoriteRecommended.contains(1),
                      onFavoriteToggle: () => toggleFavoriteRecommended(1),
                      onAdd: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(
                      label: 'Hottest',
                      isSelected: selectedCategory == 'Hottest',
                      onTap: () => setState(() => selectedCategory = 'Hottest'),
                    ),
                    SizedBox(width: 20.w),
                    CategoryButton(
                      label: 'Popular',
                      isSelected: selectedCategory == 'Popular',
                      onTap: () => setState(() => selectedCategory = 'Popular'),
                    ),
                    SizedBox(width: 20.w),
                    CategoryButton(
                      label: 'New combo',
                      isSelected: selectedCategory == 'New combo',
                      onTap: () =>
                          setState(() => selectedCategory = 'New combo'),
                    ),
                    SizedBox(width: 20.w),
                    CategoryButton(
                      label: 'Top',
                      isSelected: selectedCategory == 'Top',
                      onTap: () => setState(() => selectedCategory = 'Top'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              ProductList(
                category: selectedCategory,
                favoriteProducts: favoriteProducts,
                cardColors: cardColors,
                onFavoriteToggle: toggleFavoriteProducts,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
