import 'package:flutter/material.dart';

import '../components/widgets/dashboard/list_item.dart';
import '../config/app_assets.dart';
import '../config/app_colors.dart';

class NescafePage extends StatelessWidget {
  const NescafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        ListItem(
          brandName: "Iced Coffee Mocha",
          image: AppAssets.icedCoffeeMocha,
          price: "30",
          reviews: 41,
          backgroundColor: AppColors.secondSlice,
          boxFit: BoxFit.contain,
        ),
        ListItem(
          brandName: "Iced Coffee Original",
          image: AppAssets.icedCoffeeOriginal,
          price: "35",
          reviews: 31,
          backgroundColor: AppColors.fourthSlice,
          boxFit: BoxFit.contain,
        ),
        ListItem(
          brandName: "Iced Coffee",
          image: AppAssets.icedCoffee,
          price: "25",
          reviews: 20,
          backgroundColor: AppColors.thirdSlice,
          boxFit: BoxFit.contain,
        ),
      ],
    );
  }
}
