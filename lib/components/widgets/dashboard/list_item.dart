import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.brandName,
    required this.image,
    required this.price,
    required this.reviews,
    required this.backgroundColor,
    required this.boxFit,
  });

  final String brandName;
  final String image;
  final String price;
  final int reviews;
  final Color backgroundColor;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            height: 320,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.transparent,
            ),
          ),

          // doodle image
          Positioned(
            top: 100,
            child: Container(
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage(AppAssets.doodle),
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),

          // shading color
          Positioned(
            top: 100,
            child: Container(
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),

          // background color
          Positioned(
            top: 100,
            child: Container(
              height: 220,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: backgroundColor.withOpacity(0.9),
              ),
            ),
          ),

          // product image
          Positioned(
            right: 15,
            child: Hero(
              tag: image,
              child: SizedBox(
                height: 250,
                width: 160,
                child: Image.asset(
                  image,
                  fit: boxFit,
                ),
              ),
            ),
          ),

          // product description
          Positioned(
            top: 120,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: GoogleFonts.bigShouldersText(
                    color: AppColors.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$$price",
                  style: GoogleFonts.bigShouldersText(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  brandName,
                  style: GoogleFonts.bigShouldersText(
                    color: AppColors.textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // number of reviews
                          Text(
                            "$reviews Reviews",
                            style: GoogleFonts.bigShouldersText(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),

                          // rating
                          SmoothStarRating(
                            starCount: 5,
                            size: 16,
                            color: Colors.white,
                            borderColor: Colors.white,
                            rating: 3,
                          ),
                        ],
                      ),

                      // add to cart button
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 80,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 17,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
