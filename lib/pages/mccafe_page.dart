import 'package:flutter/material.dart';

import '../components/widgets/dashboard/list_item.dart';
import '../config/app_assets.dart';
import '../config/app_colors.dart';

class McCafePage extends StatelessWidget {
  const McCafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        ListItem(
          brandName: "Vanilla Oreo Frappe",
          image: AppAssets.vanillaOreoFrappe,
          price: "17.25",
          reviews: 75,
          backgroundColor: AppColors.fourthSlice,
          boxFit: BoxFit.cover,
        ),
        ListItem(
          brandName: "Mocha Frappe",
          image: AppAssets.mochaFrappe,
          price: "20.65",
          reviews: 145,
          backgroundColor: AppColors.thirdSlice,
          boxFit: BoxFit.cover,
        ),
        ListItem(
          brandName: "Vanilla Frappe",
          image: AppAssets.vanilaFrappe,
          price: "19.75",
          reviews: 65,
          backgroundColor: AppColors.secondSlice,
          boxFit: BoxFit.cover,
        ),
        ListItem(
          brandName: "Chocolate Frappe",
          image: AppAssets.chocolateFrappe,
          price: "25",
          reviews: 40,
          backgroundColor: AppColors.firstSlice,
          boxFit: BoxFit.cover,
        ),
      ],
    );
  }
}
