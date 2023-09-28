import 'package:cloudrevels_practical_test_milan/presentation/home_screen/component/home_screen_body.dart';
import 'package:flutter/material.dart';

import '../app/app_colors.dart';
import '../app/app_strings.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.homeScreenAppBarTitle),
        backgroundColor: AppColors.appBarColor,
      ),
      body: const HomeScreenBody(),
    );
  }
}

