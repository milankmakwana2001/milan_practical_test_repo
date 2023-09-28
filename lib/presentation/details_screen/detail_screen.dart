import 'package:cloudrevels_practical_test_milan/presentation/details_screen/component/detail_screen_body.dart';
import 'package:flutter/material.dart';

import '../app/app_colors.dart';
import '../app/app_strings.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  const Text(AppStrings.detailScreenAppBarTitle),
          backgroundColor: AppColors.appBarColor,
        ),
      body:  const DetailScreenBody(),
    );
  }
}
