import 'package:flutter/material.dart';

import '../components/widgets/dashboard/list_item.dart';
import '../config/app_assets.dart';
import '../config/app_colors.dart';

class GoldBrewPage extends StatelessWidget {
  const GoldBrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        ListItem(
          brandName: "Black Gold",
          image: AppAssets.gold,
          price: "175",
          reviews: 185,
          backgroundColor: AppColors.seventhSlice,
          boxFit: BoxFit.contain,
        ),
        ListItem(
          brandName: "Gold Roastery",
          image: AppAssets.goldRoastery,
          price: "200",
          reviews: 185,
          backgroundColor: AppColors.eightSlice,
          boxFit: BoxFit.contain,
        ),
      ],
    );
  }
}
