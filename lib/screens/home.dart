import 'package:flutter/material.dart';
import 'package:task/universal_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 60, left: 16, right: 16, bottom: 18),
                  child: Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      UniversalIconButton(
                        isLogo: true,
                        iconPath: 'assets/icons/katman_1-2.svg',
                        backgroundColor: null,
                        height: screenWidth * 0.1,
                        width: screenWidth * 0.3,
                      ),
                      const Spacer(),
                      UniversalIconButton(
                        iconPath: 'assets/icons/gift.svg',
                        backgroundColor: const Color(0x33202425),
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      UniversalIconButton(
                        iconPath: 'assets/icons/settings.svg',
                        backgroundColor: const Color(0x33202425),
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      UniversalIconButton(
                        iconPath: 'assets/icons/crown.svg',
                        isPro: true,
                        backgroundColor: const Color(0xFF1A1D1E),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.04,
                          vertical: screenHeight * 0.01,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF1A1D1E),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.12,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202425),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      height: screenHeight * 0.32,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202425),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      height: screenHeight * 0.26,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202425),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: screenHeight * 0.32,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202425),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      height: screenHeight * 0.26,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202425),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      height: screenHeight * 0.6,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF202425),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: screenHeight * 0.20,
              left: screenWidth * 0.5 - (screenWidth * 0.16) / 2,
              child: UniversalIconButton(
                iconPath: 'assets/icons/generate.svg',
                isGenerate: true,
                backgroundColor: null,
                size: screenWidth * 0.16,
                padding: EdgeInsets.all(screenWidth * 0.02),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.28,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  const Text(
                    "Nothing here yet.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    "Generate your first video.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.02,
              left: screenWidth * 0.0001,
              right: screenWidth * 0.0001,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.015,
                  horizontal: screenWidth * 0.05,
                ),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth * 0.19,
                      height: screenWidth * 0.1,
                      child: UniversalIconButton(
                        iconPath: 'assets/icons/icon_1.svg',
                        backgroundColor: const Color(0xFF202425),
                        borderRadius: BorderRadius.circular(20),
                        isRect: true,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    Container(
                      width: screenWidth * 0.19,
                      height: screenWidth * 0.1,
                      child: UniversalIconButton(
                        iconPath: 'assets/icons/icon_2.svg',
                        backgroundColor: const Color(0xFF202425),
                        borderRadius: BorderRadius.circular(20),
                        isRect: true,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    Container(
                      width: screenWidth * 0.45,
                      height: screenWidth * 0.1,
                      child: UniversalIconButton(
                        iconPath: 'assets/icons/icon_history.svg',
                        backgroundColor: const Color(0xFF202425),
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                        isHistory: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
