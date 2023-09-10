import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_size.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text
        Text(
          "CoffeeHouse",
          style: GoogleFonts.bigShouldersText(
              color: AppColors.textColor,
              fontSize: AppSize.sizeDefault * 4.2,
              fontWeight: FontWeight.w600),
        ),

        // sub text
        Text(
          "A lot can happen over coffee.",
          style: GoogleFonts.bigShouldersText(
              color: const Color(0xffA59FB0),
              fontSize: AppSize.sizeDefault * 1.6,
              letterSpacing: 0.5),
        ),

        SizedBox(
          height: AppSize.sizeDefault * 2.2,
        ),

        SizedBox(
          height: AppSize.sizeDefault * 40,
          width: AppSize.sizeDefault * 26,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColors.greyWithOpacityOf04,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColors.greyWithOpacityOf04,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColors.greyWithOpacityOf04,
                ),
              ),
              contentPadding: const EdgeInsets.only(top: 10, left: 10),
              hintText: "search...",
              hintStyle: GoogleFonts.bigShouldersText(
                  color: AppColors.greyWithOpacityOf04,
                  fontSize: AppSize.sizeDefault * 1.8,
                  fontWeight: FontWeight.bold),
              suffixIcon: Icon(
                Feather.search,
                color: AppColors.greyWithOpacityOf04,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
