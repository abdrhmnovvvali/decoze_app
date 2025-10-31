import 'package:decoze_app/core/constants/app_assets.dart';
import 'package:decoze_app/core/constants/app_text_styles.dart';
import 'package:decoze_app/core/constants/app_texts.dart';
import 'package:decoze_app/core/extensions/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  late final PageController _pageController;
  late final PageController _pageImageController;
  int currentIndex = 0;

  void _getCurrentPage(int i) {
    currentIndex = i;
    setState(() {});
  }

  @override
  void initState() {
    _pageController = PageController();
    _pageImageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageImageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            32.h,

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView(
                  controller: _pageController,
                  onPageChanged: _getCurrentPage,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppAssets.onboard1, height: 200),
                        40.h,
                        Text(
                          AppTexts.onboardText1,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: AppTextStyles.bold700,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppAssets.onboard2, height: 200),
                        40.h,
                        Text(
                          AppTexts.onboardText2,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: AppTextStyles.bold700,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppAssets.onboard3, height: 200),
                        40.h,
                        Text(
                          AppTexts.onboardText3,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: AppTextStyles.bold700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            16.h,
            // SmoothPageIndicator(
            //   controller: _pageController,
            //   count: 3,
            //   effect: WormEffect(
            //     activeDotColor: Colors.deepPurple,
            //     dotHeight: 10,
            //     dotWidth: 10,
            //   ),
            // ),
            20.h,
          ],
        ),
      ),
    );
  }
}
