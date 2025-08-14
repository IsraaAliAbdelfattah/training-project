import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/name_input_header.dart';
import '../widgets/name_input_textfield.dart';
import '../widgets/start_ordering_button.dart';
import 'package:fruit_shop/features/home_screen/presentation/view/recommended_page.dart';

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({super.key});

  @override
  State<NameInputScreen> createState() => _NameInputScreenState();
}

class _NameInputScreenState extends State<NameInputScreen> {
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadName();
  }

  Future<void> _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('userName') ?? '';
    if (savedName.isNotEmpty) {
      nameController.text = savedName;
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  Future<void> _saveNameAndNavigate() async {
    final name = nameController.text.trim();

    if (name.isEmpty) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', name);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const RecommendedPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const NameInputHeader(),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),
                  Text(
                    "What's your name?",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),

                  NameInputTextField(controller: nameController),

                  SizedBox(height: 70.h),

                  StartOrderingButton(onPressed: _saveNameAndNavigate),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
