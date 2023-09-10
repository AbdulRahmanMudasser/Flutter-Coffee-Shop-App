import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/config/app_assets.dart';

import '../components/widgets/dashboard/list_item.dart';
import '../config/app_colors.dart';

class ColdBrewPage extends StatelessWidget {
  const ColdBrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        ListItem(
          image: AppAssets.coffee4,
          price: "150",
          reviews: 65,
          backgroundColor: AppColors.secondSlice,
        ),
        ListItem(
          image: AppAssets.coffee2,
          price: "200",
          reviews: 55,
          backgroundColor: AppColors.firstSlice,
        ),
      ],
    );
  }
}

