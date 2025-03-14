import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screens/generate.dart';

class UniversalIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final bool isPro;
  final bool isHistory;
  final bool isRect;
  final double? size;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final String? label;
  final bool isLogo;
  final bool isGenerate;
  final bool isGuide;
  const UniversalIconButton({
    super.key,
    required this.iconPath,
    this.onTap,
    this.backgroundColor,
    this.isPro = false,
    this.isHistory = false,
    this.isRect = false,
    this.size,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.label,
    this.isLogo = false,
    this.isGenerate = false,
    this.isGuide = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isGenerate) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Generate()),
          );
        } else if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: padding ??
            (isPro
                ? const EdgeInsets.symmetric(horizontal: 12, vertical: 6)
                : isHistory
                    ? const EdgeInsets.symmetric(horizontal: 10, vertical: 6)
                    : isRect
                        ? const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 6)
                        : EdgeInsets.zero),
        width: width ?? size,
        height: height ?? size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: isPro || isHistory || isRect || isGuide
              ? BoxShape.rectangle
              : BoxShape.circle,
          borderRadius: isPro || isHistory || isRect
              ? (borderRadius ?? BorderRadius.circular(20))
              : null,
        ),
        child: Center(
          child: isPro
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Pro',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SFPro',
                          fontSize: 16),
                    ),
                    const SizedBox(width: 7),
                    SvgPicture.asset(
                      iconPath,
                      width: 20,
                      colorFilter: const ColorFilter.mode(
                          Color(0xFFFFD800), BlendMode.srcIn),
                    ),
                  ],
                )
              : isHistory
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          iconPath,
                          width: 17,
                          height: 17,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "History",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SFPro',
                              fontSize: 16),
                        ),
                      ],
                    )
                  : isRect
                      ? SvgPicture.asset(
                          iconPath,
                          width: 17,
                          height: 17,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        )
                      : isLogo
                          ? SvgPicture.asset(
                              iconPath,
                              width: 40,
                              height: 40,
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            )
                          : isGenerate
                              ? SvgPicture.asset(
                                  iconPath,
                                  width: 60,
                                  height: 60,
                                )
                              : isGuide
                                  ? Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                          iconPath,
                                          width: 10,
                                          colorFilter: const ColorFilter.mode(
                                              Colors.purple, BlendMode.srcIn),
                                        ),
                                        const SizedBox(width: 4),
                                        const Text(
                                          'Guide',
                                          style: TextStyle(
                                              color: Colors.purple,
                                              fontFamily: 'SFPro',
                                              fontSize: 12),
                                        ),
                                      ],
                                    )
                                  : SvgPicture.asset(
                                      iconPath,
                                      width: 20,
                                      height: 20,
                                      colorFilter: const ColorFilter.mode(
                                          Colors.white, BlendMode.srcIn),
                                    ),
        ),
      ),
    );
  }
}
