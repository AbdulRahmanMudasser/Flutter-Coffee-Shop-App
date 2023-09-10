import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/config.dart';
import '../components/widgets/dashboard/top_container.dart';
import '../helper/options.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var _selectedOption = 1;

  List<Widget> options = [
    const BlackGoldPage(),
    const ColdBrewPage(),
    const NescafePage(),
    const McCafePage(),
    const GoldBrewPage(),
  ];

  List<bool> isSelected = [false, true, false, false, false];

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // left side bar
            Container(
              height: AppSize.screenHeight,
              width: AppSize.screenWidth / 4.8,
              color: AppColors.leftBarColor,
            ),

            // center page
            Container(
              height: AppSize.screenHeight,
              width: AppSize.screenWidth,
              color: Colors.transparent,
            ),

            // menu button
            Positioned(
              left: 20,
              top: AppSize.sizeDefault * 2,
              child: Image.asset(
                AppAssets.menu,
                height: AppSize.sizeDefault * 3,
                width: AppSize.sizeDefault * 3,
              ),
            ),

            // cart button
            Positioned(
              top: AppSize.sizeDefault * 2,
              right: 20,
              child: Image.asset(
                AppAssets.bag,
                height: AppSize.sizeDefault * 3,
                width: AppSize.sizeDefault * 3,
              ),
            ),

            // app bar
            Positioned(
              top: AppSize.screenHeight - (AppSize.screenHeight - AppSize.sizeDefault * 7.5),
              left: (AppSize.screenWidth / 4.6) + AppSize.sizeDefault * 2.7,
              child: const TopContainer(),
            ),

            // side navigator bar
            buildSideNavigator(),

            const SizedBox(
              height: 20,
            ),

            // content
            Positioned(
              top: (AppSize.screenHeight / 3.7) + AppSize.sizeDefault * 0.4,
              left: (AppSize.screenWidth / 4.6) + AppSize.sizeDefault * 2.7,
              child: SizedBox(
                height: AppSize.screenHeight -
                    ((AppSize.screenHeight / 3.4) + AppSize.sizeDefault * 5.1),
                width:
                    AppSize.screenWidth - ((AppSize.screenWidth / 5) + AppSize.sizeDefault * 4.1),
                child: options[_selectedOption],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildSideNavigator() {
    return Positioned(
      top: AppSize.sizeDefault * 5,
      child: RotatedBox(
        quarterTurns: 3,
        child: SizedBox(
          width: AppSize.screenHeight - 100,
          height: AppSize.screenWidth / 5.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildOptions(title: "Black Gold", index: 0),
              buildOptions(title: "Cold Brew", index: 1),
              buildOptions(title: "Nescafe", index: 2),
              buildOptions(title: "McCafe", index: 3),
              buildOptions(title: "Gold Brew", index: 4),
            ],
          ),
        ),
      ),
    );
  }

  buildOptions({required String title, required int index}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isSelected[index]
            ? Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.textColor,
                ),
              )
            : Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
              ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedOption = index;

              // var previousIndex = isSelected.indexOf(true); // saved index 2 in previous index
              // isSelected[index] = true; // set the selected option index to true
              // isSelected[previousIndex] = false; // set the previous index to false

              // Toggle the selected state of the tapped option
              isSelected[index] = !isSelected[index];

              // Ensure only one option is selected at a time by setting others to false
              for (var i = 0; i < isSelected.length; i++) {
                if (i != index) {
                  isSelected[i] = false;
                }
              }
            });
          },
          child: Text(
            title,
            style: isSelected[index]
                ? GoogleFonts.bigShouldersText(
                    color: AppColors.textColor,
                    fontSize: AppSize.sizeDefault * 2,
                  )
                : GoogleFonts.bigShouldersText(
                    color: const Color(0xFFA59FB0),
                    fontSize: AppSize.sizeDefault * 1.9,
                  ),
          ),
        )
      ],
    );
  }
}
