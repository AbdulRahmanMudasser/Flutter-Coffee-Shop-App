import 'package:flutter/material.dart';

import '../components/widgets/dashboard/list_item.dart';
import '../config/app_assets.dart';
import '../config/app_colors.dart';

class Starbucks extends StatelessWidget {
  const Starbucks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        ListItem(
          brandName: "Espresso Dark Roast",
          image: AppAssets.espressonDarkRoast,
          price: "375",
          reviews: 23,
          backgroundColor: AppColors.sixthSlice,
          boxFit: BoxFit.contain,
        ),
        ListItem(
          brandName: "Blonde Espresso Roast",
          image: AppAssets.blondeEspressoRoast,
          price: "365",
          reviews: 96,
          backgroundColor: AppColors.ninthSlice,
          boxFit: BoxFit.contain,
        ),
      ],
    );
  }
}
