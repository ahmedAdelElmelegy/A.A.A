import 'package:flutter/material.dart';
import 'package:portfolio/core/function/url_function.dart';
import 'package:portfolio/core/theme/color.dart';
import 'package:portfolio/core/theme/style.dart';

class CustomBtn extends StatefulWidget {
  const CustomBtn({super.key});

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isHover
              ? ColorManager.secondary
              : ColorManager.primary,
        ),
        onHover: (value) => setState(() {
          isHover = value;
        }),
        onPressed: () {
          openLink(
            'https://drive.google.com/open?id=1Mu7P8yz7dMPyuRhgJqMoxLjoTIiPZKPV&usp=drive_copy',
          );
        },
        child: Text('Download CV', style: AppStyle.f14UrbanistboldWhite),
      ),
    );
  }
}
