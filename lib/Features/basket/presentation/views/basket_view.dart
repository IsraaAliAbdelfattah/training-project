import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/basket_card.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/bottom_sheet.dart';
import 'package:fruit_shop/Features/basket/presentation/widgets/n_letter.dart';
import 'package:fruit_shop/core/util/cubit/get_fruit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketView extends StatefulWidget {
  const BasketView({super.key});

  @override
  State<BasketView> createState() => _BasketViewState();
}

class _BasketViewState extends State<BasketView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetFruitCubit>(context).emitGetAllFruits();
  }

  List<String> mylist = [
    'assets/images/persimmon.jpg',
    'assets/images/strawberry.jpg',
    'assets/images/banana.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetFruitCubit, GetFruitState>(
        builder: (context, state) {
          if (state is GetAllFruits) {
            return Column(
              children: [
                Container(
                  height: 150.h,
                  color: Color(0xffFFA451),
                  child: Center(
                    child: Text(
                      'My Basket',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return BasketCard(
                      backgroundColor: Color(0xffFFFAEB),
                      imagePath: 'assets/images/image_1.png',
                      title: state.fruitList[index].name,
                    );
                  },
                  itemCount: 3,
                  shrinkWrap: true,
                ),
                /*  BasketCard(
                  backgroundColor: Color(0xffFFFAEB),
                  imagePath: 'assets/images/image_1.png',
                  title: 'Quinoa Fruit Salad',
                ),
                Divider(),
                BasketCard(
                  backgroundColor: Color(0xffF1EFF6),
                  imagePath: 'assets/images/image_2.png',
                  title: 'Melon Fruit Salad',
                ),
                Divider(),
                BasketCard(
                  backgroundColor: Color(0xffFEF0F0),
                  imagePath: 'assets/images/image_3.png',
                  title: 'Tropical Fruit Salad',
                ),*/
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 50,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              NLetter(),
                              SizedBox(width: 5.w),
                              Text(
                                '60.000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff27214D),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        height: 80.h,
                        width: 220.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFA451),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 10.h,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            showBasketBottomSheet(context);
                          },
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Center(child: Center(child: CircularProgressIndicator()));
          }
        },
      ),
    );
  }
}
