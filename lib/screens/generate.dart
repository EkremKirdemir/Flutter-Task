import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/screens/home.dart';

class Generate extends StatefulWidget {
  const Generate({super.key});
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  bool isLoopEnabled = false;
  bool isSoundEnabled = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF1A1D1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20) +
              EdgeInsets.symmetric(horizontal: 18, vertical: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/comment_dots.svg',
                        width: screenWidth * 0.09,
                        height: screenWidth * 0.09,
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Text to Video",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Generate videos by just typing text",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SFPro',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * 0.1,
                    height: screenWidth * 0.1,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF202425),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/cross.svg',
                        width: screenWidth * 0.03,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Describe your video:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SFPro',
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/star_christmas.svg',
                      width: screenWidth * 0.04,
                    ),
                    label: const Text(
                      "Guide",
                      style: TextStyle(
                          color: const Color(0xFF875DEB),
                          fontFamily: 'SFPro',
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                height: screenHeight * 0.32,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF202425),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Type here...",
                    hintStyle: TextStyle(color: const Color(0x33FFFFFF)),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                  maxLines: 4,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Video Duration:",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'SFPro', fontSize: 16),
              ),
              const SizedBox(height: 10),
              _buildOptionRow(screenWidth, ["5s", "10s", "15s", "20s"], 12),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    "Video Size:",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'SFPro', fontSize: 16),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/interrogation.svg',
                      width: screenWidth * 0.05,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              _buildScrollableOptionRow(screenWidth,
                  ["9:21", "9:16", "3:4", "1:1", "4:3", "16:9", "21:9"], 16),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Loop:",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SFPro',
                            fontSize: 16),
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/interrogation.svg',
                          width: screenWidth * 0.05,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  _buildSwitchRow(
                    isActive: isLoopEnabled,
                    onChanged: (value) {
                      setState(() {
                        isLoopEnabled = value;
                      });
                    },
                    screenWidth: screenWidth,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Sounds:",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SFPro',
                            fontSize: 16),
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/interrogation.svg',
                          width: screenWidth * 0.05,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  _buildSwitchRow(
                    isActive: isSoundEnabled,
                    onChanged: (value) {
                      setState(() {
                        isSoundEnabled = value;
                      });
                    },
                    screenWidth: screenWidth,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth * 0.16,
                    height: screenWidth * 0.16,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF875DEB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: SvgPicture.asset(
                        'assets/icons/settings_sliders.svg',
                        width: screenWidth * 0.06,
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.06),
                  Expanded(
                    child: SizedBox(
                      height: screenWidth * 0.16,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF875DEB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Generate Video (2)",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'SFPro',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String selectedDurationOption = "5s";
  String selectedSizeOption = "9:21";

  Widget _buildOptionRow(
      double screenWidth, List<String> options, double spacing) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: options.map((option) {
        bool isSelected = option == selectedDurationOption;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedDurationOption = option;
            });
          },
          child: Container(
            width: screenWidth * 0.2,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFF202425),
              border: Border.all(
                color:
                    isSelected ? const Color(0xFF875DEB) : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              option,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0x80FFFFFF),
                fontSize: 16,
                fontFamily: 'SFPro',
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildScrollableOptionRow(
      double screenWidth, List<String> options, double spacing) {
    return SizedBox(
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: spacing,
          children: options.map((option) {
            bool isSelected = option == selectedSizeOption;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSizeOption = option;
                });
              },
              child: Container(
                width: screenWidth * 0.2,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF202425),
                  border: Border.all(
                    color: isSelected
                        ? const Color(0xFF875DEB)
                        : Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  option,
                  style: TextStyle(
                    color: isSelected ? Colors.white : const Color(0x80FFFFFF),
                    fontSize: 16,
                    fontFamily: 'SFPro',
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildSwitchRow({
    required bool isActive,
    required Function(bool) onChanged,
    required double screenWidth,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Switch(
          value: isActive,
          onChanged: onChanged,
          activeColor: const Color(0xFF34C759),
          inactiveThumbColor: const Color(0xFF875DEB),
          activeTrackColor: const Color(0x8034C759),
          inactiveTrackColor: const Color(0xFF202425),
        ),
      ],
    );
  }
}
